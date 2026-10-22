// lvl 0xB

var baseAddress = Module.getBaseAddress("libfrida0xb.so");

var patchaddress = baseAddress.add(0x170c0);
var immediateAddress = patchaddress.add(3);

Memory.patchCode(immediateAddress, 4, function (code) {

    var writer = new X86Writer(code, {
        pc: immediateAddress
    });

    writer.putBytes(
        new Uint8Array([0x39, 0x05, 0x00, 0x00]).buffer
    );

    writer.flush();
    writer.dispose();
});




//lvl 0xA

// var address = Module.findExportByName("libfrida0xa.so", "_Z8get_flagii");
// console.log(address);

// if (address !== null) {
//     var getflag = new NativeFunction(address, "void", ["int", "int"]);
//     getflag(1, 2);
// }


//lvl 0x9

// var address = Module.findExportByName("liba0x9.so","Java_com_ad2001_a0x9_MainActivity_check_1flag");
// console.log(address);

// Interceptor.attach(address, {
//     onEnter: function (args) {
//         console.log("working")
//     },

//     onLeave: function (retval) {
        
//         retval.replace(1337);
//     }
// });



//lvl 0x8

// var address = Module.findExportByName("libc.so", "strcmp");
// console.log(address)

// Interceptor.attach(address,{
//     onEnter: function(args){
//         var args0=Memory.readUtf8String(args[0]);
//         var args1=Memory.readUtf8String(args[1]);
//         if (args0=="narain"){
//             console.log(args1)
//         }
        
//     }
// })




//lvl 0x7

// Java.perform(function(){
//     var Checker=Java.use("com.ad2001.frida0x7.Checker");
//     Checker.$init.overload('int','int').implementation=function(arg1,arg2){
//         this.$init(arg1,arg2)
//         this.num1.value=513;
//         this.num2.value=513;
        
//     }
    
// })






//lvl 0x6
// Java.performNow(function(){
//     Java.choose("com.ad2001.frida0x6.MainActivity",{
//         onMatch : function(instance){
//             var Checker = Java.use("com.ad2001.frida0x6.Checker")
//             var Checker_instance=Checker.$new();
//             Checker_instance.num1.value=1234;
//             Checker_instance.num2.value=4321;
//             instance.get_flag(Checker_instance)
//         }
//     }
//     );
// })



//lvl 0x5
// Java.performNow(function(){
//     Java.choose("com.ad2001.frida0x5.MainActivity",{
//         onMatch: function (instance) {
//             instance.flag(1337);
//         },
//         onComplete: function() {}   
//     });
// })




//lvl 0x4

// Java.perform(function(){
//     var Check = Java.use("com.ad2001.frida0x4.Check");
//     var instance = Check.$new();
//     console.log("hello");
//     var result = instance.get_flag(1337);
//     console.log(result);
// });




// lvl 0x3

// Java.perform(function(){
//     var Checker = Java.use("com.ad2001.frida0x3.Checker");
//     Checker.code.value=512;
// });




// lvl 0x2

// Java.perform(function(){
//     var MainActivity = Java.use("com.ad2001.frida0x2.MainActivity");
//     console.log("hello");
//     MainActivity.get_flag(4919)
    
// });




// lvl 0x1

// Java.perform(function () {

//     var MainActivity = Java.use("com.ad2001.frida0x1.MainActivity");

//     console.log("[+] MainActivity loaded");

//     MainActivity.get_random.implementation = function () {

//         console.log("get_random() called!");

//         return 1;
//     };

// });