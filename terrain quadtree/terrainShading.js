autowhatch = 1; 

var viewPort;
var readWrite;
var readWrite_filter;
var readWrite_ind;
var frame = 0;
var ratio;

//=== Dependencies ===============

var buff_lights = new JitterObject("jit.gpu.buffer");
buff_lights.blockname = "buff_lights";

var img_norH 			= new JitterObject("jit.gpu.image");
var img_alb  			= new JitterObject("jit.gpu.image");
var img_pos  			= new JitterObject("jit.gpu.image");
var img_raw_dir			= new JitterObject("jit.gpu.image");
var img_reservoir		= new JitterObject("jit.gpu.image");
var img_reservoir_ind	= new JitterObject("jit.gpu.image");
var img_dir				= new JitterObject("jit.gpu.image");
var img_history			= new JitterObject("jit.gpu.image");
var img_raw_ind			= new JitterObject("jit.gpu.image");
var img_out				= new JitterObject("jit.gpu.image");

img_norH.format 			= "rgba32_float"; 	
img_alb.format 				= "rgba32_float";  
img_pos.format 				= "rgba32_float";  	
img_raw_dir.format 			= "rgba32_float";	
img_reservoir.format 		= "rgba32_float";
img_reservoir_ind.format 	= "rgba32_float";
img_dir.format 				= "rgba32_float";
img_history.format 			= "rgba32_float";
img_raw_ind.format 			= "rgba32_float";
img_out.format 				= "rgba32_float";

setSize([1920, 1080]);

//=== Compute passes ===============

var comp_bfg 					= new JitterObject("jit.gpu.compute");
var comp_nor_pos				= new JitterObject("jit.gpu.compute");
var comp_init_alb				= new JitterObject("jit.gpu.compute");
var comp_ReSTIR_coll_temp		= new JitterObject("jit.gpu.compute");
var comp_ReSTIR_spat			= new JitterObject("jit.gpu.compute");
var comp_ReSTIR_resolve			= new JitterObject("jit.gpu.compute");
var comp_draw_lights			= new JitterObject("jit.gpu.compute");
var comp_temp_filter			= new JitterObject("jit.gpu.compute");
var comp_ReSTIR_coll_temp_ind	= new JitterObject("jit.gpu.compute");
var comp_ReSTIR_spat_ind		= new JitterObject("jit.gpu.compute");
var comp_ReSTIR_resolve_ind		= new JitterObject("jit.gpu.compute");
var comp_composite				= new JitterObject("jit.gpu.compute");

comp_bfg.shader 					= "generate_procedural_heighfiled.comp"; 				
comp_nor_pos.shader 				= "compute_nor_pos.comp";			
comp_init_alb.shader 				= "init_albedo.comp";			
comp_ReSTIR_coll_temp.shader		= "ReSTIR_collect_and_temporal.comp";	
comp_ReSTIR_spat.shader 			= "ReSTIR_spatial.comp";		
comp_ReSTIR_resolve.shader 			= "ReSTIR_resolve.comp";
comp_draw_lights.shader 			= "draw_lights.comp";
comp_temp_filter.shader 			= "temporal_filter.comp";	
comp_ReSTIR_coll_temp_ind.shader	= "ReSTIR_collect_and_temporal_ind.comp";
comp_ReSTIR_spat_ind.shader 		= "ReSTIR_spatial_ind.comp";		
comp_ReSTIR_resolve_ind.shader 		= "ReSTIR_resolve_ind.comp";
comp_composite.shader 				= "composite.comp";

//=== Bindings ===============
comp_bfg.bind("img_norH", img_norH.name);

comp_nor_pos.bind("img_norH", img_norH.name);
comp_nor_pos.bind("img_pos", img_pos.name);

comp_init_alb.bind("img_alb", img_alb.name);

comp_ReSTIR_coll_temp.bind("img_norH", img_norH.name);
comp_ReSTIR_coll_temp.bind("img_alb", img_alb.name);
comp_ReSTIR_coll_temp.bind("img_pos", img_pos.name);
comp_ReSTIR_coll_temp.bind("img_reservoir", img_reservoir.name); 
comp_ReSTIR_coll_temp.bind("buff_lights", buff_lights.name); 

comp_ReSTIR_spat.bind("img_norH", img_norH.name);
comp_ReSTIR_spat.bind("img_alb", img_alb.name);
comp_ReSTIR_spat.bind("img_pos", img_pos.name);
comp_ReSTIR_spat.bind("img_reservoir", img_reservoir.name); 
comp_ReSTIR_spat.bind("buff_lights", buff_lights.name); 

comp_ReSTIR_resolve.bind("img_norH", img_norH.name);
comp_ReSTIR_resolve.bind("img_alb", img_alb.name);
comp_ReSTIR_resolve.bind("img_pos", img_pos.name);
comp_ReSTIR_resolve.bind("img_raw_dir", img_raw_dir.name);
comp_ReSTIR_resolve.bind("img_reservoir", img_reservoir.name); 
comp_ReSTIR_resolve.bind("buff_lights", buff_lights.name); 

comp_draw_lights.bind("img_pos", img_pos.name);
comp_draw_lights.bind("img_dir", img_dir.name);
comp_draw_lights.bind("buff_lights", buff_lights.name);

comp_temp_filter.bind("img_raw_dir", img_raw_dir.name);
comp_temp_filter.bind("img_history", img_history.name);
comp_temp_filter.bind("img_dir", img_dir.name);

comp_ReSTIR_coll_temp_ind.bind("img_norH", img_norH.name);
comp_ReSTIR_coll_temp_ind.bind("img_alb", img_alb.name);
comp_ReSTIR_coll_temp_ind.bind("img_pos", img_pos.name);
comp_ReSTIR_coll_temp_ind.bind("img_dir", img_dir.name); 
comp_ReSTIR_coll_temp_ind.bind("img_reservoir", img_reservoir_ind.name); 

comp_ReSTIR_spat_ind.bind("img_norH", img_norH.name);
comp_ReSTIR_spat_ind.bind("img_alb", img_alb.name);
comp_ReSTIR_spat_ind.bind("img_pos", img_pos.name);
comp_ReSTIR_spat_ind.bind("img_dir", img_dir.name); 
comp_ReSTIR_spat_ind.bind("img_reservoir", img_reservoir_ind.name); 

comp_ReSTIR_resolve_ind.bind("img_norH", img_norH.name);
comp_ReSTIR_resolve_ind.bind("img_alb", img_alb.name);
comp_ReSTIR_resolve_ind.bind("img_pos", img_pos.name);
comp_ReSTIR_resolve_ind.bind("img_dir", img_dir.name); 
comp_ReSTIR_resolve_ind.bind("img_raw_ind", img_raw_ind.name);
comp_ReSTIR_resolve_ind.bind("img_reservoir", img_reservoir_ind.name); 

comp_composite.bind("img_dir", img_dir);
comp_composite.bind("img_ind", img_raw_ind);
comp_composite.bind("img_out", img_out);

comp_bfg.autoworkgroups 					= "img_norH";
comp_nor_pos.autoworkgroups 				= "img_norH";
comp_init_alb.autoworkgroups 				= "img_alb";
comp_ReSTIR_coll_temp.autoworkgroups		= "img_norH";
comp_ReSTIR_spat.autoworkgroups 			= "img_norH";
comp_ReSTIR_resolve.autoworkgroups 			= "img_norH";
comp_temp_filter.autoworkgroups 			= "img_dir";
comp_ReSTIR_coll_temp_ind.autoworkgroups	= "img_norH";
comp_ReSTIR_spat_ind.autoworkgroups 		= "img_norH";
comp_ReSTIR_resolve_ind.autoworkgroups 		= "img_norH";
comp_composite.autoworkgroups 				= "img_dir";

buff_lights.passname = comp_ReSTIR_resolve.name;

var _height_scale = 250;
var _offset = [0,0];
var _scale = [5,5];
var _time = 0;
function height_scale(){ _height_scale = arguments[0]; }
function offset(){ _offset = [arguments[0], arguments[1]]; }
function scale(){ _scale = [arguments[0], arguments[1]]; }
function time(){ _time = arguments[0]; }

var _num_lights = 5;
num_lights(_num_lights);

function num_lights(N){
	_num_lights = N;
	comp_draw_lights.workgroups = [Math.ceil(N / 16), 1, 1];
	create_random_lights(N);
}

function create_random_lights(N){
	let ob = {};
	ob.light_count = N;
	let lights = [];
	for(let i = 0; i < N; i++) {
		let light = {};
		light.pos = [	(Math.random()-0.5)*2*ratio, 
						(Math.random()-0.5)*2, 
						Math.random()*0.5 + 0.1];
		light.col = [	Math.random()*2 + 0.2, 
						Math.random()*2 + 0.2, 
						Math.random()*2 + 0.2];
		lights.push(light);
	}
	ob.lights = lights;
	let d = new Dict();
	d.parse(JSON.stringify(ob));
	buff_lights.dictionary(d.name);
}

function setSize(x){
	//change wiewPort size
	viewPort = [x[0], x[1]];
	img_norH.dim 			= [x[0],	x[1]];		
	img_alb.dim 			= [x[0], 	x[1]];
	img_pos.dim 			= [x[0], 	x[1]];  		
	img_raw_dir.dim 		= [x[0], 	x[1]];		
	img_reservoir.dim		= [x[0]*2, 	x[1]];	//doubled for ping-pong
	img_reservoir_ind.dim	= [x[0]*2, 	x[1]];	//doubled for ping-pong
	img_dir.dim				= [x[0], 	x[1]];	
	img_history.dim			= [x[0]*2, 	x[1]];	//doubled for ping-pong
	img_raw_ind.dim			= [x[0], 	x[1]];
	img_out.dim				= [x[0], 	x[1]];
	readWrite 				= [0, x[0]];
	readWrite_filter 		= [0, x[0]];
	readWrite_ind 			= [0, x[0]];
	ratio 					= x[0] / x[1];
}

function swap(x){
	return [x[1], x[0]];
}

function bang(){

	//Generate the terrain
	comp_bfg.param("frame", frame);
	comp_bfg.param("time", _time);
	comp_bfg.param("height_scale", _height_scale);
	comp_bfg.param("offset", _offset);
	comp_bfg.param("scale", _scale);
	comp_bfg.bang();

	//compute normals and position from heightfield
	comp_nor_pos.param("frame", frame);
	comp_nor_pos.bang();

	//set albedo color (constant for the moment)
	comp_init_alb.param("offset", _offset);
	comp_init_alb.param("scale", _scale);	
	comp_init_alb.bang();

	//=== Direct Illumination ===============================

	//collect sample candidates and perform temporal reuse
	comp_ReSTIR_coll_temp.param("frame", frame);
	comp_ReSTIR_coll_temp.param("readOffset", readWrite[0]);
	comp_ReSTIR_coll_temp.param("writeOffset", readWrite[1]);
	comp_ReSTIR_coll_temp.bang();
	readWrite = swap(readWrite);

	//perform spatial reuse
	comp_ReSTIR_spat.param("frame", frame);
	comp_ReSTIR_spat.param("readOffset", readWrite[0]);
	comp_ReSTIR_spat.param("writeOffset", readWrite[1]);
	comp_ReSTIR_spat.param("spatialRadius", 10);
	comp_ReSTIR_spat.param("spatialSamples", 8);
	comp_ReSTIR_spat.param("normalReject", 0.96);
	comp_ReSTIR_spat.bang();
	readWrite = swap(readWrite);

	//Resolve and display
	comp_ReSTIR_resolve.param("frame", frame);
	comp_ReSTIR_resolve.param("readOffset", readWrite[0]);
	comp_ReSTIR_resolve.param("writeOffset", readWrite[1]);
	comp_ReSTIR_resolve.bang();
/*
	//=== Post processing ===============================

	//Temporal filter
	comp_temp_filter.param("frame", frame);
	comp_temp_filter.param("readOffset", readWrite_filter[0]);
	comp_temp_filter.param("writeOffset", readWrite_filter[1]);
	comp_temp_filter.bang();
	readWrite_filter = swap(readWrite_filter);
*/
	//draw lights
	comp_draw_lights.bang();

	//=== Indirect Illumination ===============================

	//collect sample candidates and perform temporal reuse
	comp_ReSTIR_coll_temp_ind.param("frame", frame);
	comp_ReSTIR_coll_temp_ind.param("readOffset", readWrite_ind[0]);
	comp_ReSTIR_coll_temp_ind.param("writeOffset", readWrite_ind[1]);
	comp_ReSTIR_coll_temp_ind.bang();
	readWrite_ind = swap(readWrite_ind);

	//perform spatial reuse
	comp_ReSTIR_spat_ind.param("frame", frame);
	comp_ReSTIR_spat_ind.param("readOffset", readWrite_ind[0]);
	comp_ReSTIR_spat_ind.param("writeOffset", readWrite_ind[1]);
	comp_ReSTIR_spat_ind.param("spatialRadius", 10);
	comp_ReSTIR_spat_ind.param("spatialSamples", 8);
	comp_ReSTIR_spat_ind.param("normalReject", 0.96);
	comp_ReSTIR_spat_ind.bang();
	readWrite_ind = swap(readWrite_ind);

	//Resolve and display
	comp_ReSTIR_resolve_ind.param("frame", frame);
	comp_ReSTIR_resolve_ind.param("readOffset", readWrite_ind[0]);
	comp_ReSTIR_resolve_ind.param("writeOffset", readWrite_ind[1]);
	comp_ReSTIR_resolve_ind.bang();

	//=== Composite direct and indirect
	comp_composite.bang();

	//increment framecount
	frame++;

	outlet(0, "source", img_out.name);
	outlet(0, "bang");

}
