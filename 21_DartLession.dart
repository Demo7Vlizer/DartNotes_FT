//-- Positional Parameters in Dart

//------------------------------------------

/* 
  void main(){
    test(10, 20, 30);
}

void test(int a, int b, int c){
    print('a = $a');
    print('b = $b');
    print('c = $c');

    /* -- print outputs.. 
                      a = 10
                      b = 20
                      c = 30
                    */
}
 */

//----------------------------------------------------------
//--

/*
void main() {
  test(10, 20, 30);
  test(35, 87);
}

void test(int a, int b, [int? c]) {
  print('a = $a');
  print('b = $b');
  print('c = $c');

                    /* -- print outputs.. 
                      a = 10
                      b = 20
                      c = 30
                      a = 35
                      b = 87
                      c = null
                    */

}
*/

//----------------------------------------------------------

/*
void main() {
  test(10, 20, 30);
  test(35, 87);
}

void test(int a, int b, [int? c=0]) {
  print('a = $a');
  print('b = $b');
  print('c = $c');

                    /* -- print outputs.. 
                      a = 10
                      b = 20
                      c = 30
                      a = 35
                      b = 87
                      c = 0
                    */

}
*/

//----------------------------------------------------------

/*
void main() {
  test(10);
}

void test(int a, [int? b, int? c=0]) {
  print('a = $a');
  print('b = $b');
  print('c = $c');

                    /* -- print outputs.. 
                      a = 10
                      b = null
                      c = 0
                    */

}
*/