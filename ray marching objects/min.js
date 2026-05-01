autowhatch = 1; inlets = 1; outlets = 1;

function anything(){
	outlet(0, "min(", arguments[0], ",", arguments[1], ")");
}