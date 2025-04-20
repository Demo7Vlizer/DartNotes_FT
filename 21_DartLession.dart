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

//----------------------------------------------------------------------------
//-- Named Parameters in Dart | Dart named parameters

/*
  void main(){
    test(b:10, c:20, a:30);
}

void test({int? a, int? b, int? c}){   //-- Now we have named parameters after adding.. curly braces and make it nullable.. now we've to compulsarly to give the nemed either it'll show error.. 
    print('a = $a');
    print('b = $b');
    print('c = $c');

    /* -- print outputs.. 
                      a = 30
                      b = 10
                      c = 20
                    */
}
*/

//----------------------------------------------------------------------------
//-- All named parameters are optional..

/*
  void main(){
    test(b:10, a:30);
}

void test({int? a, int? b, int? c}){   
    print('a = $a');
    print('b = $b');
    print('c = $c');

    /* -- print outputs.. 
                      a = 30
                      b = 10
                      c = null
                    */
}
*/

//----------------------------------------------------------------------------

/*
 void main(){
    test(b:10, a:30);
}

void test({int? a, int? b, int? c=0}){   
    print('a = $a');
    print('b = $b');
    print('c = $c');

    /* -- print outputs.. 
                      a = 30
                      b = 10
                      c = 0
                    */
}
*/

//----------------------------------------------------------------------------

/*
void main(){
    test(b:10, a:30, c:50);
}

void test({int? a, int? b, int? c=0}){   
    print('a = $a');
    print('b = $b');
    print('c = $c');

    /* -- print outputs.. 
                      a = 30
                      b = 10
                      c = 50
                    */
}
*/

//----------------------------------------------------------------------------
//-- If we want to make a some named  parameter required.. instead of optional..

/*
void main(){
    test( b:10);      //-- Now we getting error.. if we didn't add the b named parameter.. 
}

void test({int? a=55, required int? b, int? c=0}){   
    print('a = $a');
    print('b = $b');
    print('c = $c');

    /* -- print outputs.. 
                      a = 55
                      b = 10
                      c = 0
                    */
}
*/

//----------------------------------------------------------------------------
//-- Combination of Positional & Named Parameters

/*
void main() {
  test(10);
}

void test(int a, {int? b, int? c}) {
  print('a = $a');
  print('b = $b');
  print('c = $c');

  /* -- print outputs.. 
                      a = 10
                      b = null
                      c = null
                    */
}
*/

//----------------------------------------------------------------------------

/*
void main() {
  test(10, c:40);          // we have to specify the a parameter in the first either will show error.. 
}

void test(int a, {int? b, int? c}) {
  print('a = $a');
  print('b = $b');
  print('c = $c');

  /* -- print outputs.. 
                      a = 10
                      b = null
                      c = 40
                    */
}
*/

//----------------------------------------------------------------------------

/*
void main() {
  test(10, c:40, b:56);         
}

void test(int a, {int? b, int? c}) {
  print('a = $a');
  print('b = $b');
  print('c = $c');

  /* -- print outputs.. 
                      a = 10
                      b = 56
                      c = 40
                    */
}
*/

//----------------------------------------------------------------------------

void main() {
  test(10, 40);        //-- which is positional parameter we've to pass the parameter in a sequance  way.. either it'll show error.. 
}

void test(int a, int b, {int? c}) {
  print('a = $a');
  print('b = $b');
  print('c = $c');

  /* -- print outputs.. 
                      a = 10
                      b = 40
                      c = null
                    */
}

//----------------------------------------------------------------------------

