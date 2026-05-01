autowhatch = 1; inlets = 3; outlets = 1;

var ce = [0,0,0];
var ra = 0.1;

function message(){
	if(inlet === 2){
		ra = arguments[0];
		return;
	} 
	if(inlet === 1){
		ce = [arguments[0], arguments[1], arguments[2]];
		return;
	}
}

function bang(){
	outlet(0, "SDFsphere(p", ",", ra, ",", "vec3(",  ce[0], ",", ce[1], ",", ce[2], "))");
}