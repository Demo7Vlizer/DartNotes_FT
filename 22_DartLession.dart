//-- Anonymous Function in Dart | Lambda Function| Dart

//-- Anonymous and Lambda function also known as nameless Function..

/*  
  (parameter...){
    statements;
  };
 */

//--------------------------------------------
//-- Anonymous and Lambda function

/*
void main() {

  var cube = (int n) {
    return n * n * n;
  };

  print(cube(7));    //  343
}
*/

//--------------------------------------------

/*
void main() {

  int Function(int) cube = (int n) {
    return n * n * n;
  };

  print(cube(4));    //  64
}
*/

//--------------------------------------------

/*
void main() {
  List names = ['Sam', 'Jack', 'Mark'];

  names.forEach((name) {
    print(name);               // Sam  Jack  Mark
  });
}
*/

//----------------------------------------------------------------------------
//-- Arrow Function in Dart

/*
//--- This is normal function.. 

void main() {
  int c = cube(5);

  print('Cube of 5 = $c');         //  Cube of 5 = 125
}

int cube(int n) {
  return n * n * n;
}
*/

//******************************************************** */
/*
//--- This is Arrow function.. 

void main() {
  int c = cube(3);

  print('Cube of 3 = $c');        //  Cube of 3 = 27
}

int cube(int n) => n * n * n;

*/

//******************************************************** */
//--- Some of the key points that you must notice while using this notation.... 

// /*
void main() {
  int c = cube(3);

  print('Cube of 3 = $c');        //  Cube of 3 = 27
}

int cube(int n) => n * n * n;      // You must notice that you we cannot use return and curly braces.. 

// */