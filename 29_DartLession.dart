//- Redirecting Constructor Dart | Constructor Redirection in Dart

//-- This is basically a concept that allows us to call another constructor from the one constructor of the same class...

//----------------------------------------------------------------------------------------------------
/*
"Redirecting Constructor  
- Constructor that makes a call to another constructor of the same class using `this()` is called a redirecting constructor." 
- It can't have body  or initializer list..  
- There can't be filed initializer, howeve it can accept normal parameters ... 
- it must be the generative constructor & not the factory constructor .. 
- When redirecting constructor uses const, then called one must be const 
- Using this() we can redirect to only one constructor at time.. 
- Recursive redirection is now allowed..
- Factory constructor returns instance by calling another constructor, it looks similar to constructor redirecting.
 */

//----------------------------------------------------------------------------------------------------
//-- Constructor that makes a call to another constructor of the same class using `this()` is called a redirecting constructor."
/* 
## User of Redirecting Constructor ..
- Consider we've the multiple constructor now out of this constructor there is some constructor that has got common logic which is use by another constructors 
and the remaining construtor has just different list of parameters that can be use to initialze the different value.. but the common logic or common task 
has to be done by the single constructor so in this case what we can do we can make the use of mutitple  constructor but all those constructor all it's say some 
constructor as per the requirement can make a call to constructor has that has common logic.. so that we don't need to copy paste that logic in all the remaining
constructor and that's going to run for all the constructor in the class  
 */

/*
class Test {
  //-- Default Constructor
  Test() {
    print('Test() called');
  }

  //-- THe named constructor
  Test.demo() {
    print('Test.demo() called');
  }

  //-- Actually this one is Redirecting Constructor
  // Test.callMe():this();    //-- 'this' basically calls the Default Constructor
  Test.callMe() : this.demo();  //-- 'this' now this calling named constructor .. 
  //////////////////////////-- That's why the constructor that is making a call to another constructor of the same class which actually known as redirecting constructor
  
}

void main() {
  Test t = Test.callMe();
}
*/

//----------------------------------------------------------------------------------------------------
//-- It can't have body  or initializer list..

/*------------------------
class Test {
  int x;

  Test():x=10 {             //- In here initializer is (:x=10).. this particular place is called the initializer list.. so incase of normal constructor it's completely fine.. 
    print('Test() called');
  }

  // Test.callMe() : this();
  Test.callMe():x=10:this();    //-- But in here we're trying to do the same thing we getting error.. because it's not allowed to have body and not even the initializer list.. 
}

void main() {
  Test t = Test.callMe();
}
------------------------------*/

//----------------------------------------------------------------------------------------------------
//-- There can't be fieled initializer, howeve it can accept normal parameters ...

/*----------------------------
class Test {      //-- The class called Test has two instance field 
  int x;         //-- First one is this.. 
  int y;        //--- And second one is this.. 

  Test(this.x, this.y) {          //-- (this.x, this.y) = In here called that fieled initializer - for noraml constructor it's completely fine to have this one.. 
                                 //-- So what we're think we write inside the bracket is actally called the field initializer we mostly called this concept as syntatic sugar to initialize the field using constructor in the dart .. 
    print('Test() called'); 
  }

  // Test.callMe() : this(10, 20);     
  Test.callMe(int x, int y) : this(x, y);      //-- in here we didn't get error because we're using normal parameter not that.. field initializer
  Test.callMe(this.x, this.y) : this(10, 20);      //- But we try to do same with  so then we will get an error..  
                                                  //--  The dart pad will show error like this..=  The redirecting constructor can't have a field initializer
}

void main() {
  Test t = Test.callMe(10, 20);      //-- In here we pass the parameter of normal parameter of line no. 82.. 
}
----------------------------------*/

//----------------------------------------------------------------------------------------------------
//-- it must be the generative constructor & not the factory constructor ..

/*-------------------
class Test {
  Test() {
    print('Test() called');
  }

  // Test.callMe():this();
  factory Test.callMe():this();   //-- After adding factory it'll show many errro.. 

  void main() {
    Test t = Test.callMe();
  }
}
----------------------*/

//----------------------------------------------------------------------------------------------------
//-- When redirecting constructor uses const, then called one must be const

/*---------------------------
class Test {

  const Test() {                    //-- After adding const also here - the error will resolve to the line no. 124
    print('Test() called');  
  }

  // Test.callMe() : this();
  const Test.callMe() : this();    //-- after adding const we getting error in 'this()'

  static void main() {
    Test t = Test.callMe();
  }
}
--------------------------------*/

//----------------------------------------------------------------------------------------------------
//-- Using this() we can redirect to only one constructor at time..

/*-------------------------
class Test {

  // Test();
  Test():this.demo();   //-- In here default constructor we can call the another constructor by using redirecting constructor .. 

  Test.demo();

  Test.callMe(): this(); //-- Using this 'this' we only call the one constructor ..
  // Test.callMe() : this():this.demo();    //-- Here we can see as soon as get error.. after using another 'this'

  static void main() {
    Test t = Test.callMe();
  }
}
----------------------------*/


//----------------------------------------------------------------------------------------------------
//-- Recursive redirection is now allowed..

/*--------------------------
class Test {      //-- The test class has two constructor .. 

    //-- The default one .. 
    // Test();
    Test():this.callMe();  //-- This also we getting error like this = Constructors can't redirect to themselves either directly or indirectly.

    //-- And the secone one is named constructor ... 
    Test.callMe():this();
    // Test.callMe():this.callMe();  //--  //-- In here we getting.. error.. we directly call the same constructor this is not allowed.. 
                                 //-- We get error like this.. =  Constructors can't redirect to themselves either directly or indirectly.

}

void main() {
    Test t = Test.callMe();
}
-------------------------------*/


//----------------------------------------------------------------------------------------------------
//-- Factory constructor returns instance by calling another constructor, it looks similar to constructor redirecting.

class Test{

  Test(){
    print('Test called');
  }

  factory Test.callMe(){
    return Test();         //-- In here we're not using redirecting constructor.. actally we're returning the instace of  default constructor by factory constructor .. 
  }
}

void main(){
  Test t = Test.callMe();
}