autowhatch = 1; inlets = 2;

var elemcount = 0;
declareattribute("elemcount", {type: "long",min: 0,setter: "setelemcount",label: "Element count"});
function setelemcount(v) { elemcount = Math.max(0, v); }

var keyoffset = 0;
declareattribute("keyoffset", {type: "long",min: 0,setter: "setkeyoffset",label: "Key offset"});
function setkeyoffset(v) { keyoffset = Math.max(0, v); }

var keytype = 0;
declareattribute({name: "keytype",setter: "setkeytype",style: "enumindex",enumvals: ["float", "int", "uint"],default: 0,label: "Key type"});
function setkeytype(v) { keytype = Math.max(0, Math.min(2, Number(v))); }

var order = 0;
declareattribute({name: "order",setter: "setorder",style: "enumindex",enumvals: ["ascending", "descending"],default: 0,label: "Order mode"});
function setorder(v) { order = Math.max(0, Math.min(1, Number(v))); }

let proxy = new JitterObject("jit.proxy");
let pass_sort_float_ascending   = new JitterObject("jit.gpu.compute");  pass_sort_float_ascending.shader    = "pass_sort_float_ascending.comp";
let pass_sort_float_descending  = new JitterObject("jit.gpu.compute");  pass_sort_float_descending.shader   = "pass_sort_float_descending.comp";
let pass_sort_int_ascending     = new JitterObject("jit.gpu.compute");  pass_sort_int_ascending.shader      = "pass_sort_int_ascending.comp";
let pass_sort_int_descending    = new JitterObject("jit.gpu.compute");  pass_sort_int_descending.shader     = "pass_sort_int_descending.comp";
let pass_sort_uint_ascending    = new JitterObject("jit.gpu.compute");  pass_sort_uint_ascending.shader     = "pass_sort_uint_ascending.comp";
let pass_sort_uint_descending   = new JitterObject("jit.gpu.compute");  pass_sort_uint_descending.shader    = "pass_sort_uint_descending.comp";

function jit_gpu_buffer(name){ proxy.name = name; }

function nextPowerOfTwo(N){ //bit-twiddling
    if (N <= 1) return 1;
    N--; N |= N >> 1; N |= N >> 2; N |= N >> 4; N |= N >> 8; N |= N >> 16;
    return N + 1;
}

function sort(){

    let pass_sort;

    switch (keytype) {
        case 0:
            pass_sort = order == 0 ? pass_sort_float_ascending : pass_sort_float_descending;
            break;
        case 1: 
            pass_sort = order == 0 ? pass_sort_int_ascending : pass_sort_int_descending;
            break;
        case 2: 
            pass_sort = order == 0 ? pass_sort_uint_ascending : pass_sort_uint_descending;
    }
    
    pass_sort.bind("buff_values", proxy.send("getname"));

    const structMembers = (proxy.send("getbytecount") / 4) / elemcount;
    const np2 = nextPowerOfTwo(elemcount);
    const numPairs = np2 / 2;
    const numStages = Math.log2(np2);
    
    pass_sort.workgroups = [Math.ceil(numPairs / 128), 1, 1];
    pass_sort.param("pc.numValues", elemcount);
    pass_sort.param("pc.structMembers", structMembers);
    pass_sort.param("pc.keyOffset", keyoffset);

    for(let stageIndex = 0; stageIndex < numStages; stageIndex++){
        for(let stepIndex = 0; stepIndex < stageIndex + 1; stepIndex++){
            
            let groupWidth = 1 << (stageIndex - stepIndex);
            let groupHeight = 2 * groupWidth - 1;
            pass_sort.param("pc.groupWidth", groupWidth);
            pass_sort.param("pc.groupHeight", groupHeight);
            pass_sort.param("pc.stepIndex", stepIndex);
            pass_sort.bang();
        }
    }
}

function bang(){
    
    sort();
    outlet(0, "bang");   
}