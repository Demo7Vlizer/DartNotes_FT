//-- continue & labeled continue in Dart 

/*

- **continue** is a keyword in Dart.
- When a `continue` statement is encountered in a loop, all the         statements after it within the loop are skipped, and control         transfers back to the start of the loop for the next iteration.
- It is only valid within loops.
- Dart supports both regular and labeled `continue` statements.

 */

//--------------------------------------------------------------
//-- // continue

/*
  void main() {
    int i;
    for (i = 1; i <= 10; i++) {
      
        if (i == 4 || i == 7) {
            continue;
        }
      
        print('i=$i');
    }
}
*/


//--------------------------------------------------------------

// continue with nested loops

/*
 * 
  void main() {
    int i, j;
    for (i = 1; i <= 3; i++) {
      
        for (j = 1; j <= 3; j++) {
          
            if (j == 2) {
                continue;
            }
          
            print('i=$i j=$j');
        }
    }
}
 */

//--------------------------------------------------------------
// continue with nested loops 

// labeled continue with nested loops

/*
  
*/

void main() {
  int i, j;

  outerLoop: for (i = 1; i <= 3; i++) {
    for (j = 1; j <= 3; j++) {
      if (j == 2) {
        continue outerLoop;
      }
      print('i=$i j=$j');
    }
  }
}