autowhatch = 1; inlets = 1; outlets = 1;

'use strict'
/*
//______ GRAB CONTEXT ______________________________________________________________________

var drawto = "";
declareattribute("drawto", null, "dosetdrawto", 0);

var implicitdrawto = "";
var swaplisten = null; // The listener for the jit.world
var explicitdrawto = false;
var proxy = null;
var swapListener = null;

if(max.version >= 820) {
    proxy = new JitterObject("jit.proxy");
}

var implicit_tracker = new JitterObject("jit_gl_implicit"); // dummy oggetto gl
var implicit_lstnr = new JitterListener(implicit_tracker.name, implicit_callback);

function implicit_callback(event) { 
	// se non stai mettendo ctx a mano e se implicitdrawto != dal nome di implicit
	if(!explicitdrawto && implicitdrawto != implicit_tracker.drawto[0]) {
		// important! drawto is an array so get first element
		implicitdrawto = implicit_tracker.drawto[0];
        //FF_Utils.Print("IMPLICIT CLL", implicitdrawto);
		dosetdrawto(implicitdrawto);
	}
}
implicit_callback.local = 1;

function setDrawto(val) {
	explicitdrawto = true;
	dosetdrawto(val);
};

function dosetdrawto(newdrawto) {
	if(newdrawto == drawto || !newdrawto) {
		// bounce
        //FF_Utils.Print("bouncer");
		return;
	}
	if(proxy !== undefined) {
		proxy.name = newdrawto;
        // viene chiamato quando abbiamo classe
        if(proxy.class !== undefined && proxy.class != "") {
			// drawto may be root render or sub-node
			// if root the class will return jit_gl_context_view
			if(proxy.class != "jit_gl_context_view") { // jit_gl_context_view = node dentro world
				// class is a sub-node, get the drawto on that
				proxydrawto = proxy.send("getdrawto"); // prendi drawto di world che sarebbe nome del node
				// recurse until we get root
				// important! drawto is an array so get first element
                //FF_Utils.Print("proxy class", proxy.class);
                //FF_Utils.Print("DIVERSo da contxt_view", implicitdrawto);

				return dosetdrawto(proxydrawto[0]);
			}
		}
		else {
            // viene chiamato se non abbiamo classe
			proxydrawto = proxy.send("getdrawto");
			if(proxydrawto !== null && proxydrawto !== undefined) {
                //FF_Utils.Print("SE E NODE??", proxydrawto[0]);

				return dosetdrawto(proxydrawto[0]);  // name of the internal node
			}
		}
	}
    //FF_Utils.Print("ASSEGNA drawto", newdrawto);
    drawto = newdrawto;
    // chiama cose che vanno inizializzate quando c'è il drawto
    // assegna listener per ctx
    swapListener = new JitterListener(drawto, swapCallback);
}
dosetdrawto.local = 1;

function destroyFindCTX() {
	implicit_lstnr.subjectname = ""
	implicit_tracker.freepeer();
}
destroyFindCTX.local = 1;

post("CTX", drawto, "\n");
*/

//----------- PARAMS -------------------------
{
	var levels = 7;
	var refinementIterations = 6;
	var inpaintIterations = 0;
	var confidence = [0., 0.00005];
	var threshold = 0.001;
	var inpaintStrength = 0;
	var testLevel = 0;
}

//----------- INIT CONTAINERS ----------------
{
	var passes = [];
	var dependencies = [];
	var invariantDependencies = [];
}

//----------- IMAGES -------------------------
{
	var inImg = new JitterObject("jit.gpu.image");
	inImg.format = "RGBA32_FLOAT";
	inImg.bindas = "inImg";
	invariantDependencies.push(inImg);

	var prevLevelImg = new JitterObject("jit.gpu.image");
	prevLevelImg.format = "RGBA32_FLOAT";
	prevLevelImg.bindas = "prevLevelImg";
	invariantDependencies.push(prevLevelImg);

	var levelImg = new JitterObject("jit.gpu.image");
	levelImg.format = "RG32_FLOAT";
	levelImg.bindas = "levelImg";
	invariantDependencies.push(levelImg);

	var flowImg = new JitterObject("jit.gpu.image");
	flowImg.format = "RGBA32_FLOAT";
	flowImg.bindas = "flowImg";
	invariantDependencies.push(flowImg);

	var flowOutImg = new JitterObject("jit.gpu.image");
	flowOutImg.format = "RGBA32_FLOAT";
	flowOutImg.bindas = "flowOutImg";
	invariantDependencies.push(flowOutImg);

	var gradientImg = new JitterObject("jit.gpu.image");
	gradientImg.format = "RGBA32_FLOAT";
	gradientImg.bindas = "gradientImg";
	invariantDependencies.push(gradientImg);

	var outImg = new JitterObject("jit.gpu.image");
	outImg.format = "RG32_FLOAT";
	outImg.bindas = "outImg";
	outImg.name = "outImg";
	invariantDependencies.push(outImg);
}

//----------- SHADERS ------------------------
{
	var copySha = new JitterObject("jit.gpu.shader");
	copySha.file = "copySha.comp";
	invariantDependencies.push(copySha);

	var rgb2lumaSha = new JitterObject("jit.gpu.shader");
	rgb2lumaSha.file = "rgb2lumaSha.comp";
	invariantDependencies.push(rgb2lumaSha);

	var blurAndDownscaleH = new JitterObject("jit.gpu.shader");
	blurAndDownscaleH.file = "blurAndDownscaleH.comp";
	invariantDependencies.push(blurAndDownscaleH);

	var blurAndDownscaleV = new JitterObject("jit.gpu.shader"); 
	blurAndDownscaleV.file = "blurAndDownscaleV.comp";
	invariantDependencies.push(blurAndDownscaleV);

	var resetFlowSha = new JitterObject("jit.gpu.shader"); 
	resetFlowSha.file = "resetFlowSha.comp";
	invariantDependencies.push(resetFlowSha);

	var wrapSha = new JitterObject("jit.gpu.shader"); 
	wrapSha.file = "wrapSha.comp";
	invariantDependencies.push(wrapSha);

	var gradSha = new JitterObject("jit.gpu.shader"); 
	gradSha.file = "gradSha.comp";
	invariantDependencies.push(gradSha);

	var opticalFlowSha = new JitterObject("jit.gpu.shader"); 
	opticalFlowSha.file = "opticalFlowSha.comp";
	invariantDependencies.push(opticalFlowSha);

	var inpaintOddSha = new JitterObject("jit.gpu.shader"); 
	inpaintOddSha.file = "inpaintOddSha.comp";
	invariantDependencies.push(inpaintOddSha);

	var inpaintEvenSha = new JitterObject("jit.gpu.shader"); 
	inpaintEvenSha.file = "inpaintEvenSha.comp";
	invariantDependencies.push(inpaintEvenSha);

	var upsampleFlowSha = new JitterObject("jit.gpu.shader"); 
	upsampleFlowSha.file = "upsampleFlowSha.comp";
	invariantDependencies.push(upsampleFlowSha);

	var testSha = new JitterObject("jit.gpu.shader");
	testSha.file = "testSha.comp";
	invariantDependencies.push(testSha);
}

//----------- UTILITIES ----------------------
{
	var prevDim = [-1, -1];

	var inMat;// = new JitterMatrix(4, "float32", 1, 1);
	inMat = new JitterObject("jit_gl_texture");
	inMat.type = "float32";
	inMat.drawto = "ctx";
	inMat.name = "inMat";
}

function initDependenciesFromTexture(){

	post("tex name", inMat.name, "\n");
	inImg.drawto = "ctx";
	inImg.jit_gl_texture(inMat.name);
	post("img name", inImg.name, "\n");
}

function initDependenciesFromMatrix(){
	inImg.jit_matrix(inMat.name);
}

function connect(){

	//if it's not the first pass in the list, connect it with the previous one
	let numPasses = passes.length;
	if(numPasses > 1){
		passes[numPasses - 1].add_dependency(passes[numPasses - 2].name);
	}
}

function dispatch(shader, threads, read, write, readwrite, params){

	if(params.length > 0){
		let thisConst = new JitterObject("jit.gpu.constants");
		thisConst.bindas = "Config";
		thisConst.shader = shader;
		thisConst.dictionary(params[0].name);
		dependencies.push(thisConst);
		read = read.concat(thisConst.name);
	}

	let thisPass = new JitterObject("jit.gpu.compute");
	thisPass.automatic = 0;
	thisPass.shader = shader;
	thisPass.threads = threads;
	thisPass.write = write;
	thisPass.readwrite = readwrite;
	thisPass.read = read;

	passes.push(thisPass);
	connect();
}

function buildTheGraph(){

	{// Reset the flow

		let workgroupSize = 16;
		let threads = 	[	Math.ceil(flowImg.dim[0] / workgroupSize),
							Math.ceil(flowImg.dim[1] / workgroupSize),
							1
						];

		dispatch(	resetFlowSha.name, 	//@shader
					threads, 			//@threads
					[], 				//@read
					[flowImg.name], 	//@write
					[],					//@readwrite
					[] 					//uniforms dictionary
				);
	}

	{// Copy the previous-frame pyramid

		let workgroupSize = 16;
		let threads = 	[	Math.ceil(levelImg.dim[0] / workgroupSize),
							Math.ceil(levelImg.dim[1] / workgroupSize),
							1
						];

		dispatch(	copySha.name, 	 		//@shader
					threads, 				//@threads
					[levelImg.name], 		//@read
					[prevLevelImg.name], 	//@write
					[],						//@readwrite
					[] 						//uniforms dictionary
				);

	}

	{// convert input image from RGB to Luma
		let workgroupSize = 16;
		let threads = 	[	Math.ceil(inImg.dim[0] / workgroupSize),
							Math.ceil(inImg.dim[1] / workgroupSize),
							1
						];
	
		dispatch(	rgb2lumaSha.name, 		//@shader
					threads, 				//@threads
					[inImg.name], 			//@read
					[levelImg.name], 		//@write
					[],						//@readwrite
					[] 						//uniforms dictionary
				);
	}

	{// Build the blurred pyramid

		let readOffset = 0;
		let size = [inImg.dim[0], inImg.dim[1]];
		let writeOffset = size[0];
		let workgroupSize = 16;

		for(let level = 0; level < levels; level++){

			post("level", level, "\n");
			post("writeOffset", writeOffset, "\n");
			post("size", size, "\n");

			let constDict = new Dict();
			constDict.set("size", size);
			constDict.set("readOffset", readOffset);
			constDict.set("writeOffset", writeOffset);

			dispatch(	blurAndDownscaleH.name, 							//@shader
						[Math.ceil(size[0] / workgroupSize), size[1], 1], 	//@threads
						[], 												//@read
						[], 												//@write
						[levelImg.name],									//@readwrite
						[constDict] 										//uniforms dictionary
					);

			size[0] = Math.ceil(size[0]/2);

			dispatch(	blurAndDownscaleV.name, 							//@shader
						[size[0], Math.ceil(size[1] / workgroupSize), 1], 	//@threads
						[], 												//@read
						[], 												//@write
						[levelImg.name],									//@readwrite
						[constDict] 										//uniforms dictionary
					);

			size[1] = Math.ceil(size[1]/2);


			readOffset = writeOffset;
			writeOffset += size[0];


		}
	}

	post("___________________", "\n");

	{// Compute the flow

		//precompute read/write offsets
		let readOffsets = [];
		let sizes = [];
		readOffsets.push(0);
		let thisSize = [inImg.dim[0], inImg.dim[1]];
		let thisOffset = thisSize[0];
		for(let i = 0; i < levels; i++){
			readOffsets.push(thisOffset);
		 	//post("thisSize", thisSize, "\n");
			sizes.push([thisSize[0], thisSize[1]]);
			thisSize[0] = Math.ceil(thisSize[0] / 2);
			thisSize[1] = Math.ceil(thisSize[1] / 2);
			thisOffset += thisSize[0];

		}

		for(let level = levels-1; level >= 0; level--){

			let workgroupSize = 16;
			let threads = 	[	Math.ceil(sizes[level][0] / workgroupSize),
								Math.ceil(sizes[level][1] / workgroupSize),
								1
							];

			//post("level", level, "\n");
			//post("threads", threads, "\n");

			let constDict = new Dict();
			constDict.set("size", sizes[level]);
			constDict.set("readOffset", readOffsets[level]);
			constDict.set("writeOffset", readOffsets[level-1]);

			let constFlowDict = new Dict();
			constFlowDict.set("size", sizes[level]);
			constFlowDict.set("readOffset", readOffsets[level]);
			constFlowDict.set("writeOffset", readOffsets[level-1]);
			constFlowDict.set("threshold", threshold);
			constFlowDict.set("confidence", confidence);

			for(let i = 0; i < refinementIterations; i++){

				dispatch(	wrapSha.name, 			//@shader
							threads, 				//@threads
							[flowImg.name], 		//@read
							[], 					//@write
							[prevLevelImg.name],	//@readwrite
							[constDict] 			//uniforms dictionary
						);

				dispatch(	gradSha.name, 			//@shader
							threads, 				//@threads
							[levelImg.name], 		//@read
							[gradientImg.name], 	//@write
							[prevLevelImg.name],	//@readwrite
							[constDict] 			//uniforms dictionary
						);

				dispatch(	opticalFlowSha.name, 	//@shader
							threads, 				//@threads
							[gradientImg.name], 	//@read
							[], 					//@write
							[flowImg.name],			//@readwrite
							[constFlowDict] 		//uniforms dictionary
						);
			}

			let constInpaintDict = new Dict();
			constInpaintDict.set("size", sizes[level]);
			constInpaintDict.set("readOffset", readOffsets[level]);
			constInpaintDict.set("writeOffset", readOffsets[level-1]);
			constInpaintDict.set("strength", inpaintStrength);
			post("level", level, "\n");
			post("readOffset", readOffsets[level], "\n");
			post("writeOffset", readOffsets[level-1], "\n");

			//inpaint
			for(let i = 0; i < inpaintIterations; i++){


				dispatch(	inpaintOddSha.name, 			//@shader
							threads, 						//@threads
							[flowImg.name, levelImg.name], 	//@read
							[], 							//@write
							[flowOutImg.name],				//@readwrite
							[constInpaintDict] 				//uniforms dictionary
						);

				dispatch(	inpaintEvenSha.name, 				//@shader
							threads, 							//@threads
							[flowOutImg.name, levelImg.name], 	//@read
							[], 								//@write
							[flowImg.name],						//@readwrite
							[constInpaintDict] 					//uniforms dictionary
						);
			}

			//upsample
			if(level > 0){
				let upperThreads = 	[	Math.ceil(sizes[level-1][0] / workgroupSize),
										Math.ceil(sizes[level-1][1] / workgroupSize),
										1
									];

				let constUpsampleDict = new Dict();
				constUpsampleDict.set("sizeLow", sizes[level]);
				constUpsampleDict.set("sizeHigh", sizes[level-1]);
				constUpsampleDict.set("readOffset", readOffsets[level]);
				constUpsampleDict.set("writeOffset", readOffsets[level-1]);

				dispatch(	upsampleFlowSha.name, 	//@shader
							upperThreads, 			//@threads
							[], 					//@read
							[], 					//@write
							[flowImg.name],			//@readwrite
							[constUpsampleDict] 	//uniforms dictionary
						);				
			}
		}
	}

	{// Copy to the output

		let workgroupSize = 16;
		let threads = 	[	Math.ceil(flowImg.dim[0] / workgroupSize),
							Math.ceil(flowImg.dim[1] / workgroupSize),
							1
						];

		//precompute read/write offsets
		let readOffsets = [];
		let sizes = [];
		readOffsets.push(0);
		let thisSize = [inImg.dim[0], inImg.dim[1]];
		let thisOffset = thisSize[0];
		for(let i = 0; i < levels; i++){
			readOffsets.push(thisOffset);
		 	//post("thisSize", thisSize, "\n");
			sizes.push([thisSize[0], thisSize[1]]);
			thisSize[0] = Math.ceil(thisSize[0] / 2);
			thisSize[1] = Math.ceil(thisSize[1] / 2);
			thisOffset += thisSize[0];

		}

		let constTestDict = new Dict();
		constTestDict.set("size", sizes[testLevel]);
		constTestDict.set("readOffset", readOffsets[testLevel]);
	
		dispatch(	testSha.name, 		//@shader
					threads, 			//@threads
					[flowImg.name], 	//@read
					[outImg.name], 		//@write
					[],					//@readwrite
					[constTestDict] 	//uniforms dictionary
				);
	}
}

function updateGraph(){

	destroyAndInitPassesAndDependencies();
	resizeImages();
	buildTheGraph();
}

function updateGraphIfDimIsDifferent(){

	if(inMat.dim[0] != prevDim[0] || inMat.dim[1] != prevDim[1]){
		prevDim[0] = inMat.dim[0];
		prevDim[1] = inMat.dim[1];
		updateGraph();
		return;
	}
}

function destroyAndInitPassesAndDependencies(){

	for(let i = dependencies.length-1; i >= 0; i--){ dependencies[i].freepeer(); }
	for(let i = passes.length-1; i >= 0; i--){ passes[i].freepeer(); }
	passes = [];
	dependencies = [];
}

function resizeImages(){

	inImg.dim = 	[inMat.dim[0], inMat.dim[1], 1];
	outImg.dim = 	[inMat.dim[0], inMat.dim[1], 1];

	let twoTimesWidth = inMat.dim[0]*2;

	prevLevelImg.dim = 	[twoTimesWidth, inMat.dim[1], 1];
	levelImg.dim = 		[twoTimesWidth, inMat.dim[1], 1];
	flowImg.dim = 		[twoTimesWidth, inMat.dim[1], 1];
	flowOutImg.dim = 	[twoTimesWidth, inMat.dim[1], 1];
	gradientImg.dim = 	[twoTimesWidth, inMat.dim[1], 1];

	//outImg.dim = 	[twoTimesWidth, inMat.dim[1], 1];
}

function runComputeShaders(){
	passes[0].bang();
}

function jit_gl_texture(inname){

	inMat.jit_gl_texture(inname);

	updateGraphIfDimIsDifferent();
	initDependenciesFromTexture();
	runComputeShaders();
	outlet(0, "source", levelImg.name);
}


function jit_matrix(inname){

	inMat = new JitterMatrix(inname);
	updateGraphIfDimIsDifferent();
	initDependenciesFromMatrix();
	runComputeShaders();
	outlet(0, "source", levelImg.name);
}

function notifydeleted(){
	//destroyFindCTX();
	for(let i = passes.length-1; i >= 0; i--){ passes[i].freepeer(); }
	for(let i = dependencies.length-1; i >= 0; i--){ dependencies[i].freepeer(); }
	for(let i = invariantDependencies.length-1; i >= 0; i--){ invariantDependencies[i].freepeer(); }
}