//-- Anonymous Function in Dart | Lambda Function| Dart

//-- Anonymous and Lambda function also known as nameless Function..

/*  
  (parameter...){
    statements;
  };
 */

//--------------------------------------------

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

void main() {
  List names = ['Sam', 'Jack', 'Mark'];

  names.forEach((name) {
    print(name);               // Sam  Jack  Mark
  });
}
