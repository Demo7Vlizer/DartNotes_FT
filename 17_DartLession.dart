//-- For , For in, For Each loops in Dart

//----------------------------------------
/*
  for(initializatio; condition; increment/decrement) {

    body of loop

  }
----------------------------------------------------------------*/

//---  for loop

/*
void main() {
    int i;

    for (i = 1; i <= 5; i++) {
        print(i);
    }
}
*/

//----------------------------------------
//-- For in loop

/*
  for (variable in expression) {
    body of loop
  }
 */


/*
void main() {
    List items = [10, 20, 30, 40, 50];

    for (int item in items) {
        print(item);
    }
}
*/

//----------------------------------------
//-- forEach in loop

/*
collection.forEach (void fun(value){
    body of loop
});
*/


// forEach loop
void main() {
  List names = ['Sam', 'Mark', 'Dennis', 'Jack'];

  names.forEach((name) {
    print(name);
  });
}

