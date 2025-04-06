//-- Dart var vs dynamic | Difference between var & dynamic in dart..

//--var is just a keyword using it we can create the variable.. but it cannot be use as a written type is cannot be a var..
// void main(){

// }

// var test (){         // this is showing us error..

// }

//********************************* */
// void main(){

// }

// dynamic test(){        // this is fine   the reason here is this is a keyword.. that allows you to create a variable.. as well as it is stand alone type.. that's the reason we can specify  as written type..

// }

//---------------------------------------------------------------------
//-- var gives compile time errors / and dynamic Throws run time exceptions..
// void main() {
//   var x = 10;
//   var y = 'Hello';
//   print(x + y);        // we cannot between and string and int so that why it's showing error.. without running.. it's showing.. lints.. which highlighted.. that called lints..
// }

//*************************************** */
// void main() {
//   dynamic x = 10;
//   dynamic y = 'Hello';
//   print(x +
//       y); // there is not showing any error it'll showing error after running this code..-  Throws run time exceptions
// }

/* 
var x = 10;
print(x.toUpperCase());   // showing error on compile time
-----------------
dynamic x = 10;
print(x.toUpperCase());   // this is also showing but after run this code.. this is called run time error or also showing exception..
*/

//---------------------------------------------------------------------
//--
// void main() {
//   var x = 10;
//   x = 20;
//   print(x.runtimeType);
//   x = 'Hello';    // this is also showing error.. because when we're assining.. variable.. any type of.. we've to give same type of variable..
//   x = 5.2;
// }
//*********************************************** */
// void main() {                   // -- but in dynamic it's not showing any type of error here.. 
//   dynamic x = 10;
//   x = 20;
//   print(x.runtimeType); // int

//   x = 'Hello';
//   print(x.runType); // String 

//   x = 5.2;
//   print(x.runtimeType);    // double
// }

//---------------------------------------------------------------------
