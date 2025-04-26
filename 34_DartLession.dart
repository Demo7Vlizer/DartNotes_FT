//-- Use of this in Dart | this keyword in Dart |

/*  
    - Dart support two variants of this ..
    1) this
    2) this()
 */

//-----------------------------------------------------------------------
/*  
------------------------
    - What is this?
    this is the implicit reference, that refers to current invoking object.. 
----------------------------------------

//-- Reference is something that can store the address of an object  
//= But if we observe in the line number 20 - we have this so this is not the explicit reference it is in fact the reference which is 
     readily available in each and every program and it is created by the dart for you.. that's why it's called the implicit reference 
  - Now understand what this reference hold or what is reference to us basically in line no. 23 this reference towards the address of current invoking object 
//-- What this mean of current invoking object.. 
    If we observe here in line no. 35   t1 dot show so when this methods get executed so for this t1 is the invoking object  
    invoking object in the sense the object that invokes or execute the methods 
    and in line no. 27 ...  when the show methods is under execution for that particular time period t1 acts as the current invoking object in line no. 37 
    now address of this t1 objects gets stored inside the reference this and believe ths all this these things happens  automatically means we don't need to assign iterace of t1 or address of that object inside this refrernce so it's going to peroform automatically by the dart system 
    and once thie methods get clear then t2 dot show will execute now at this time again the methods show will execute but at this time t2 is the invoking object and due to this the address of this t2 is sotred inside the reference called this it means at this particular place or for time period when show is under exectution
    t2 is current invoking object.. 

 */

/*-------------------------
class Test{
    void show(String refName){
        print('$refName : ${this.hashCode}');
        }
    }

    void main(){

      //-- We've to reference t1 and t2 - Basically this t1 and t2 are the explicit refrence because these are created by me explicitly 
        Test t1 = Test();
        Test t2 = Test();

        t1.show('t1');  //  t1 : 218667714

        t2.show('t2');    //  t2 : 715841726

    }
-------------------------------*/

//-----------------------------------------------------------------------
/*  
------------------------
    - What is this?
    Availability
    Inside no-static method & generative constructor ...
    -----------------------------------------------------

    Unavailability
    Inside static method & factory constructor.. 
    -----------------------------------------------------

    Uses 
    - To access members of class (Specially in case of name conflicts)
*/

//-----------------------------------------------------------------------
//-- Uses
// - To access members of class (Specially in case of name conflicts)

/*----------------------------
class Test {
  int x = 10; // instance variable

  void show() {
    int x = 20; // local variable

    print('x=$x');                   //  x=20
    print('this.x=${this.x}');     //  this.x=10
  }
}

void main() {
  Test t = Test();
  t.show();
}
-------------------------------*/

//-----------------------------------------------------------------------
//-- Uses
// - Passing invoking object to another method from given method

/*-------------------
class Abc{
    static void doSomeThing(Test obj){
        // ..
    }
}

class Test{
    void demo(){
        // some code
        Abc.doSomeThing(this);
    }
}

void main(){
    Test t = Test();
    t.demo();
}
-----------------------*/

//-----------------------------------------------------------------------
//-- Uses
// - To return current instance from the method

/*----------------------
class Test {
    Test demo() {
        // some code
        return this;    //-- This particular method demo is returning the object which has called or executed method 
    }
}
--------------------*/

//-----------------------------------------------------------------------
//-- Uses
// - Inside constructor, it is mostly used in field initializer & initliazer  list..

/*
class Point {     //-- The class point has two field x and y 
    final int x;    //-- And it has two constructor .. 
    final int y;

    //-- The first one 
    Point.choice1(this.x, this.y);   //-- In here we've field initializer which is basically performed by using this dot x and this dot y

    //-- And the second one.. 
    Point.choice2(int x, int y)  //-- In here we've initializer list this.x and this.y and this int x, and y, in paranthesis are normal parameter not this are the field.. 
        : this.x = x,
          this.y = y;
}
*/

//-----------------------------------------------------------------------
//-- Note
// - Value of this cannot be modify

/*
class Test{
  void demo(){
    this = null;  //-- In here we're tyring to write this is equal to null basically we writing null but partically we cannot write this is equal to something .. 
  }
}
*/

//-----------------------------------------------------------------------
//-- What is this()       -- With parentheses

//-- this()  is the construct, which is used for constructor redirection..

/*   
    Availability
  -Inside generative constructor .. 

  --------
    Unavailability
  - Inside factory constructor.. 
  */


/*--------------------------
class Test {
  //-- Class Test has got total three constructor ..

  //-- First one is default constructor
  Test() {
    print('Test() called');
  }

  //-- Second one is named constructor
  Test.demo() {
    print('Test.demo() called');
  }

  //-- Which is again third  one is named constructor
  // Test.callMe() : this();  //-- In here we've written colon and we've this big bracket -
                         // -so basically whenever we write colon and something using this that particular - 
                        // -portion of constructor is called as the constructor redirecting portion which is used to invoke another constructor from the given constructor 
                       //- It'll call default constructor .. 

  Test.callMe() : this.demo();  //-- In here we're trying to call named this.demo  constructor it'll call them.. 
}

void main() {     //-- Inside the main we've written Test.callMe();
  Test t = Test.callMe();
}

------------------------------*/