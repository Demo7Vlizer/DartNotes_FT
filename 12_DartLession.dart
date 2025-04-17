//-- All Operators in Dart | Dart Operators

/*
--------------------------------

### **Operator Basics**
1. **Definition**: An operator is a symbol that tells the computer to perform a specific arithmetic or logical action.
2. **Purpose**: Operators create expressions and operate on data or variables.
3. **Types of Operators**:
   - **Unary**: Operates on a single operand (e.g., `-x`).
   - **Binary**: Operates on two operands (e.g., `x + y`).
   - **Ternary**: Operates on three operands (e.g., `x ? y : z`).

#### **Example of an Expression**:
- **Expression**: `x = y + z;`
  - **Operators**: `=` and `+`
  - **Operands**: `x`, `y`, `z`

------------------------------------------------------------------------------
---

### **Types of Operators in Programming**
1. **Arithmetic Operators**: Perform basic mathematical operations like addition (`+`), subtraction (`-`), multiplication (`*`), etc.
2. **Relational Operators**: Compare values, such as greater than (`>`), less than (`<`), or equal to (`==`).
3. **Logical Operators**: Combine multiple conditions, e.g., AND (`&&`), OR (`||`), NOT (`!`).
4. **Assignment Operators**: Assign values, e.g., `=` or `+=`.
5. **Increment & Decrement Operators**: Increase (`++`) or decrease (`--`) values by one.
6. **Bitwise Operators**: Perform bit-level operations, like AND (`&`), OR (`|`), XOR (`^`).
7. **Conditional Operators**: Ternary operator, e.g., `? :`, for concise conditional statements.
8. **Type Test Operators**: Check or test data types.
9. **Cascade & Spread Operators**: Efficiently handle collections or objects in some languages.
10. **Null Aware Operators**: Deal with `null` values safely.
11. **Other Operators**: Language-specific operators or those serving special purposes.

---------------------------------------
*/

//------------------------------------------------------------------------------------------------------------
//-- Arithmetic operators..

// void main() {
//   int a = 10, b = 4, c = 3;

//   print(a + b); //  14
//   print(a - b); //  6
//   print(a * b); //  40
//   print(a / b); //  2.5
//   print(a ~/ b); //  2
//   print(a % c); //  1
// }

//------------------------------------------------------------------------------------------------------------
//-- Relational operators = also known as binary operators..

// void main() {
//   print('10 > 5 : ${10 > 5}'); //  10 > 5 : true
//   print('10 > 10 : ${10 > 10}'); //  10 > 10 : false
//   print('10 >= 10 : ${10 >= 10}'); //  10 >= 10 : true
//   print('10 < 5 : ${10 < 5}'); //  10 < 5 : false
//   print('10 < 50 : ${10 < 50}'); //  10 < 50 : true
//   print('10 == 5 : ${10 == 5}'); //  10 == 5 : false
//   print('10 == 10 : ${10 == 10}'); //  10 == 10 : true
//   print('10 != 5 : ${10 != 5}'); //  10 != 5 : true
//   print('10 != 10 : ${10 != 10}'); //  10 != 10 : false
// }

//------------------------------------------------------------------------------------------------------------
//-- Locical Operators..

// void main() {
//   var a = 10 > 5 && 20 < 50;
//   var b = 10 > 50 && 5 < 10;
//   var c = 100 > 200 && 50 < 55;

//   var x = true;
//   var y = !x;

//   print('a : $a'); //  a : true
//   print('b : $b'); //  b : false
//   print('c : $c'); //  c : false
//   print('x : $x'); //  x : true
//   print('y : $y'); //  y : false
// }

//------------------------------------------------------------------------------------------------------------
//-- Assignment Operators..

// void main() {
//   int x = 10;
//   int y = 20;

//   y += 5; // y = y + 5

//   print('x : $x'); //  x : 10
//   print('y : $y'); //  y : 25
// }

//------------------------------------------------------------------------------------------------------------
//-- Increment & Decrement Operators..

// void main() {
//   int x = 10;
//   int y = --x; // pre Decrement..

//   print('x : $x'); //  x : 9
//   print('y : $y'); // y : 9
// }

//***************************************** */
// void main() {
//   int x = 10;
//   int y = x--;      // post Decrement..

//   print('x : $x');   //  x : 9
//   print('y : $y');   //  y : 10
// }

//------------------------------------------------------------------------------------------------------------
// Bitwise operators..

// void main() {
//   int a = 10;     //    1010
//   int b = 12;     //    1100
//                   //  &
//   int c = a & b;  //    1000

//   print('c: $c');  //  c: 8          //-- The final result is 1000, which is 8 in decimal
// }
//*****************************************//
// void main() {
//   int a = 10;     //    1 0 1 0
//   int b = 12;     //    1 1 0 0
//                   // | ---------
//   int c = a | b;  //    1 1 1 0

//   print('c: $c');  //  c: 14          //-- The final result is 1110, which is 14 in decimal
// }
//*****************************************//
// void main() {
//   int a = 10;     //    1 0 1 0
//   int b = 12;     //    1 1 0 0
//                   // ^ ---------
//   int c = a ^ b;  //    0 1 1 0

//   print('c: $c');  //  c: 6          //-- The final result is 0110, which is 6 in decimal
// }
//*****************************************//
// void main() {
//   int a = 5;     // 0 0 1 0 1

//   int b = a << 2;  //   1 0 1 0 0

//   print('b: $b');  //  b: 20         //-- The final result is 10100, which is 20 in decimal
// }
//*****************************************//
// void main() {
//   int a = 20; // 1 0 1 0 0

//   int b = a >> 2; //   0 0 1 0 1

//   print(
//       'b: $b'); //  b: 5         //-- The final result is 00101, which is 5 in decimal
// }

//------------------------------------------------------------------------------------------------------------
//-- Conditional Operators..

// void main() {
//   int x;

//   x = (10 > 5) ? 100 : 200;

//   print('x : $x');   //  x : 100
// }
//*****************************************//
// void main() {
//   int x;

//   x = (10 > 50) ? 100 : 200;

//   print('x : $x'); //  x : 200
// }

//------------------------------------------------------------------------------------------------------------
//-- Type Test Operators..

// void main() {
//   var x = 10;

//   print(x is int); //  true
//   print(x is! int); //  false
//   print(x is String); //  false

//   double y = x as double;

//   print('y: $y'); //  y : 10
// }

//------------------------------------------------------------------------------------------------------------
//-- Cascade Operators ..
//-- this Cascade operators is mostly recommended when we don't want to get return value.. that is  when we want to perform only operation over the object.. without getting the return value..

// void main() {
//   Test obj = Test();

//   // this is normal way to call ..
//   //   obj.greet();
//   //   obj.message();

//   //By using cascade operators..
//   obj
//     ..greet()
//     ..message();
// }

// class Test {
//   void greet() {
//     print('Welcome to Cascade Operators');
//   }

//   void message() {
//     print('Please undersatnd it properly..');
//   }
// }
//*****************************************//
//-- Spread Operators..

// void main() {

//   var list1 = [10, 20, 30];

//   var list2 = [15, 25, 25, ...list1];

//   print('list1 : $list1');   //  list1 : [10, 20, 30]
//   print('list2 : $list2');  //  list2 : [15, 25, 25, 10, 20, 30]
// }

//------------------------------------------------------------------------------------------------------------
//-- Null ware Operators
//----- Default Operators: ??

// void main() {
// //   var x;
//   var x = 5;

//   var y;

//   // long conde..
//   //   if (x == null) {
//   //     y = 0;
//   //   } else {
//   //     y = x;
//   //   }

//   //-- By using Null ware operators..
//   y = x ?? 0;

//   print(
//       'y : $y'); // y : 5      //-- if we don't assign the value of x  it'll give =  y : 0
// }
//*****************************************//
// Fallback assignment operatros: ??=

// void main() {
//   dynamic x = 5;
//   dynamic x;

//   x ??= 10; //  If we don't assing any value of x it'll take 10 value in x

//   print('x : $x'); //  x : 5
// }
//*****************************************//
//-- Safe navigation  operator: ?.       //= it is also known as null ware members acces operators
//- This operators .. mostly access the properties and methods of an object

// void main() {
//   var name = 'Sam';
//   var name;

//   var len = name
//       ?.length; // If we don't assing inside the value of name it'll throw (null) instead showing runTime exception error..

//   print('len: $len'); //  len: 3
// }

//*****************************************//
//-- null-shorting cascade ?..

// void main() {
//   var obj = Test();
//   var obj;

//   obj
//     ?..greet() // ?.. when we don't assign any value inside the obj it'll don't throw error and it'll print that 'See you in next year'
//     ..message();

//   print('See you in next year');
// }

// class Test {
//   void greet() {
//     print('Welcome to null-shorting cascade');
//   }

//   void message() {
//     print('Please get this all done');
//   }
// }
//*****************************************//
//-- null-aware spread operator (...?)

// void main() {
// //   var list1 = [10, 20, 30];
//   var list1;

//   var list2 = [40, 50, ...?list1];

//   print('list2: $list2');   //  list2: [40, 50, 10, 20, 30]
// }

//------------------------------------------------------------------------------------------------------------
//-- Others Operators.. 

/*

    .       Member access operator        (Which is use to access the property and methods of an object simply we can use name.lenght, string.toUppercase)
    ()      Function call operator        (This is use to Opening and Closing paranthesis)
    []      Subscript access operator     (When we use List in order specify the index for the list so why this we use this..)

*/