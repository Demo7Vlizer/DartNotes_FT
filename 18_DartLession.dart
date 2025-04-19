//-- break & labeled break in Dart | Dart break statement

/*
  
  - `break` is a keyword in Dart.
  - It terminates the execution of loops and `switch` cases.
  - Using `break` outside of loops or `switch` cases is invalid.
  - Dart supports both regular and labeled `break`.

 */

//--------------------------------------------------------
//-- break

/*
void main() {
    int i;
    for (i = 1; i <= 10; i++) {
      
        if (i == 3) {
            break;
        }
        print('i=$i');    // i=1   i=2
    }
}
*/

//--------------------------------------------------------
// break with nested loops

/*
void main() {
  int i, j;

  for (i = 1; i <= 3; i++) {
    
    for (j = 1; j <= 3; j++) {
      
      print('i=$i j=$j');
      
      if (j == 2) {
        break;
      }
    }
  }
}

*/

//--------------------------------------------------------
//-- labeled break with nested loops

void main() {
  int i, j;

  outerLoop: for (i = 1; i <= 3; i++) {
    for (j = 1; j <= 3; j++) {
      
      print('i=$i j=$j');
      
      if (j == 2) {
        break outerLoop;
      }
    }
  }
}