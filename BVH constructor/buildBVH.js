autowhatch = 1; inlets = 1; outlets = 2;

var triCount; //total number of triangles
var vertCount; //total number of vertices

//Create the buffers
var vertBuff = new JitterObject("jit.gpu.buffer");
var triBuff = new JitterObject("jit.gpu.buffer");
var minMaxBuff = new JitterObject("jit.gpu.buffer");
var bvhBuff = new JitterObject("jit.gpu.buffer");

vertBuff.blockname = "vertBuff";
triBuff.blockname = "triBuff";
minMaxBuff.blockname = "minMaxBuff";
bvhBuff.blockname = "bvhBuff";
vertBuff.passname = "vertBuff";
triBuff.passname = "triBuff";
minMaxBuff.passname = "minMaxBuff";
bvhBuff.passname = "bvhBuff";

//create the compute passes
var fillTriBuffComp = new JitterObject("jit.gpu.compute");
fillTriBuffComp.shader = "comp.fill_triBuff.comp";
var sceneMinMaxComp = new JitterObject("jit.gpu.compute");
sceneMinMaxComp.shader = "comp.scene_minMax.comp"

//set dependencies
fillTriBuffComp.triBuff = triBuff.name;
fillTriBuffComp.vertBuff = vertBuff.name;
fillTriBuffComp.minMaxBuff = minMaxBuff.name;

sceneMinMaxComp.minMaxBuff = minMaxBuff.name;



function listMethods(object){
    var list = []
    list = Object.getOwnPropertyNames(object)
                .filter(function(property) {
                       return typeof object[property] == 'function';
                }
                );
    post()
    post("# METHODS #")
    for(var i = 0 ; i < list.length ; i++){
        post()
        post(list[i]+"()")
    }    
    post()
    post("# END #")        
}

function jit_matrix(inname){

	let inMat = new JitterMatrix(inname);
	vertCount = inMat.dim;
	triCount = vertCount / 3;

	//set the buffers' dimension
	//this.patcher.getnamed(vertBuff.name).message("allocitems", vertCount);
	//this.patcher.getnamed(triBuff.name).message("allocitems", triCount);
	//this.patcher.getnamed(minMaxBuff.name).message("allocitems", triCount);
	vertBuff.allocitems(vertCount);
	triBuff.allocitems(triCount);
	minMaxBuff.allocitems(triCount);

	//set compute passes params
	fillTriBuffComp.triCount = triCount;
	sceneMinMaxComp.triCount = triCount;
}

function bang(){

	//listMethods(minMaxBuff);
/*
	//1) compute leaf min/max and centroid
	fillTriBuffComp.bang();

	//2) compue scene's min and max
	let ws = 16; //workgroup size
	let numThreads = triCount; //number of threads needed
	let wg = Math.ceil(numThreads / ws); //number of workgroups
	
	let step = 1;
	while(numThreads > 1){
		sceneMinMaxComp.workgroups = [wg, 1, 1];
		sceneMinMaxComp.step = step;
		sceneMinMaxComp.bang();
		step *= 16;
		numThreads = Math.ceil(numThreads/ws);
		wg = Math.ceil(wg/ws);
	}
	
	outlet(1, "jit_gpu_buffer", minMaxBuff.name);

	//send bang upon completion
	outlet(0, "bang");
*/
}

function notifydeleted(){
	post("deleted!", "\n");
	vertBuff.freepeer();
	triBuff.freepeer();
	minMaxBuff.freepeer();
	bvhBuff.freepeer()
	sceneMinMaxComp.freepeer();
	fillTriBuffComp.freepeer();
}