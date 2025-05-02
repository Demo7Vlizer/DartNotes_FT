//-- Constructors in inheritance in Dart | super to call constructor during inheritance

/*----------------------------
class A {   //-- we've class called A it contains unnamed default constructor .. and zero parameter.. 
  A() {
    print('Constructor of A called');
  }
}

class B extends A {
  B() {
    print('Constructor of B called');
  }
}

class C extends B {
  C() {
    print('Constructor of C called');
  }
}

void main() {
  var obj = C();
  
  /* --- PRINT OUTPUT --------
    Constructor of A called
    Constructor of B called
    Constructor of C called
  */
}
------------------------------*/



//------------------------------------------------------
/*  
    Now this time B() constructor is not trying to find default           constructor instead it'll try to invoke
    quietly the is one integer parameter constructor that is class A     Offcourse available in class A 

*/


/*-------------
class A { 
  
  A(int x ) {  
    print('Constructor of A with int x  called');
  }
}

class B extends A {   
  B():super(10) {
    print('Constructor of B called');
  }
}


void main() {
  var obj = B();
  
  /* --- PRINT OUTPUT --------
    Constructor of A with int x  called
    Constructor of B called
  */
}
----------------*/

//------------------------------------------------------

/*----------------
class A { 
  
  A(int x ) {  
    print('Constructor of A with int x  called');
  }
  
  A.someName(){
    print('someName of called');
  }
  
}

class B extends A {   
  B():super.someName() {
    print('Constructor of B called');
  }
  
}


void main() {
  var obj = B();
  
  /* --- PRINT OUTPUT --------
    someName of called
    Constructor of B called

  */
}
-------------------*/

//------------------------------------------------------
//-- In real life example of super keyword..


/*---------------------------------
class Person {  //-- We've class Person here that contains name and age it has got two parameter constructor 
  String name;
  int age;

  Person(this.name, this.age);  //-- Means using this constructor we initializing the value of name and age.. 
}

class Employee extends Person {  //-- Now here we've Class clalled Employee that contains salary and post.. 
  double salary;
  String post;
  
  //-- Three ways to initialize the value in contstructor.. in here we're using field initializer to initialize the salary and post.. 
  Employee(String name, int age, this.salary, this.post) : super(name, age);  //-- In here by using super it's means we're calling super class constructor by default so the value of name and age are being called through the sub constructor .. - using super constructor or keyword.. or super class invokation constructor .. I don't need to copy and paste or I didn't need to perform the same activity that super class constructor does.. means I can reuse my efforts or use the code that is there inside the super class constructor without even copying and pasting .. 
  
  
  void showData() {
    print('$name is $post of $age yrs old & earns $salary');
  }
}

void main() {
  var obj = Employee('Sam', 21, 25000, 'Designer');
  obj.showData();
  /* --- Print OutPut ------
    Sam is Designer of 21 yrs old & earns 25000

   */
}
---------------------------------*/

//------------------------------------------------------
//-- 10 Keypoints .. (related to constructors in inhertance..)

// 1 Why constructors are not inherited?
//--------------------------------------

/*------------
class A {  //-- We having a Class A that contains the constructor having a name A
    A() {
        //
    }
}

class B extends A {  //-- Then we've class B that extending Class A then B has got the constructor with the name B 
    B() {
        //
    }
    A() {       
        //
    }
}
---------------*/

// 2 What is the case when superclass has no constructor?
// ------------------------------------------------------


/*--------------
class A {      //-- In here nothing written inside A Class.. 
    //
}

class B extends A {
  B() {
    print('Constructor of B called');
  }
}

void main() {
  var obj = B();       //  Constructor of B called

}
----------------*/


//----------------------------------------------------------------------------

// 3. Why super class constructor is invoked
// before a sub class constructor
//--------------------------------------------

/*------------------------
class Person {   //--  This class Person has got name and age.. to initialize this one we've written this constructor.. 
    String name;
    int age;

    Person(this.name, this.age);  //-- In order to initialize this particular members it the task of this member class Person calss- 
                                // -has to initialize it's own members that is the responsibility of this class.. that we've done in this class variable.. 
}

/*  
    Now we've subClass called employee which extending Class called person .. a employee hires salary and post 
    there has to some ways.. name and age.. to initialize name and age..    there has to be some ways even it you're not taking care of super initializing super class members .. 
    there must be a strong way that super constructor or super class members has to be a initialize automatically.. 
    to do this things there is only one solution that through the subClass constructor the super class constructor must've to invoke 
    either it has to be invoke normally that is implicitly without calling  if we've default constructor in subClass and if we don't have that one then it's must be call through the 
    the super keyword that we've done in here... 
    (String name, int age )  -- we're using this parameter to initialize super class constructor value so that we passsing the name and age inside super.. it'll call the super class the constructor.. 
    and initiliaze the own member of employee that is salary and post having using this.salary and this.post.. 
 */
class Employee extends Person {
    double salary;
    String post;

    Employee(String name, int age, this.salary, this.post) : super(name, age);

    void showData() {
        print('$name is $post of $age yrs old & earns $salary');
    }
}
------------------------*/

//----------------------------------------------------------------------------

// 4 When to use super() in sub class constructor?
// ----------------------------------------------

/*
class A{    //--- In here Class has got total three constructor 
    A();       //-- Unnamed zero parameter constructor .. or Default constructor - then for subClass there is no need to use of super if you use super then it's not problem it's going to call the default constructor 
    
    A.withParameter(int x, int y);
    A.someName();
}

class B extends A{    //- And we've the constructor inside class B 
    B():super.withParameter(20, 30){
        
    }
}
*/

//---------------------------------------------------------------------------------------
// 5 Factory constructor of sub class can't use super()
// ---------------------------------------------------

/*---------------
class A{
    A(){
        //
    }
}

class B extends A{
    B();
    
    factory B.useMe():super(){     //-- In here we're trying to call default constructor by using super keyword it's immediately show errors.. 
                                  //-- the factory constructor cannot be used super to invoked super class constructor 
        return B();
    }
}
------------------*/

//---------------------------------------------------------------------------------------
// 6 Factory constructor of super class can't be
// called using super() form sub class constructor
// ------------------------------------------------

/*---------------
class A{
  A(){
    //
  }
  
  factory A.tryMe(){
    return A();
  }
}

class B extends A{
//   B():super();             //-- This completely fine there is not showing any error it means using this super we can invoke the generative constructor of super class 
  B():super.tryMe();                //-- But when we try to call in factory constructor it'll show error.. But we cannot invoke the factory constructor of super class.. 
}
-------------------*/

//---------------------------------------------------------------------------------------
// 7 Using super() we can call abstract class constructor

/*----------------------
abstract class A{
  A.someName(int a, int b){
    print('Constructor A.someName(int a, int b) called');
  }
}

class B extends A{
  B():super.someName(20, 10){
    print('Constructor of B called');
  }
}

void main(){ 
  var obj = B();
  /* ---- PRINT OUTPUT ------
    Constructor A.someName(int a, int b) called
    Constructor of B called 
   -------------------------*/

  /*
     Even if the super constructor Class is abstract so it's possible that through the subClass constructor 
     we're able to call abstract class.. from inside the subClass constructor .. 

   */
} 
-------------------------*/

//---------------------------------------------------------------------------------------
// 8 Constructor of interface won't be called
// from the sub class constructor
//--------------------------------------------

/*--------------------
class A{   //- We've class A that contains default constructor.. 
  A(){
    print('Constructor of A called');
  }
}

/*  
    In here we've class B we can observe here to inherit class A I haven't written extend instead in here we've written implements
    means I want to use this Class A as not a class use it as interface and inisde we've default constructor B.. inside the main we've created 
    object of B here.. and when we run this program the constructor of B wil be called only .. this is because A is not a class here it's means
    it's not a super class it's a interface we trying to use .. that's the reason the constructor of interface won't be call through the 
    constructor of this subClass.. but if we change this implements into extends due to this after this when we run this program then it'll call 
    both constructor A and B because it'll become superClass.. after making it extends.. 

 */
class B implements A{
  B(){
    print('Constructor of B called');
  }
}

void main(){
  var obj = B();   //  Constructor of B called
}
--------------------*/

//---------------------------------------------------------------------------------------
// 9 Both this() & super() can't be used in same constructor
// -----------------------------------------

/*--------------
/*  
    So basically using this() we can call the different constructor of the same class.. 
    In this exz
 */

class A{
  A(){
    print('Constructor of A called');
  }
}

class B extends A{
  B(){
    print('Constructor of B called');
  }

//   B.someName():super(){   //-- Before calling this B.someName constructor the default constructor A will be be called that's completely fine..  
    //                         //-- Along with this invokation super class constructor.. I want to call this() means I want to this default constructor B here... 
    B.someName():this():super(){      //-- So we can observe here we getting error here.. it's not possible so many error showing.. here.. while using this() with the super keyword.. even after the changing the position it'll showing error. 
    //
  }
}

void main(){
  var obj = B.someName();
}
---------------*/


//---------------------------------------------------------------------------------------

// 10. Both initializer list & super()
// can't be used in same constructor
//--------------------------------------------

/*---------------------
class A {
  A() {
    print('Constructor of A called');
  }
}

class B extends A {
  int _a;
  int _b;

  B(int a, int b) : _a = a, _b = b : super() {    //-- (int a, int b) -To initialize this a and b , after this so we've used here.. colon : _a = a, _b = b  -this specific things called initializer list.. 
                                        //--  -But along with this initializer list let's if we want to call the default constructor we can write here super() but after using super we'll get error.. 
                                        //-- -Consider situation that A  if we've don't have default constructor.. in this situation also had to call super() .. so makes sure that if we have initializer list for constructor for such a constructor -
                                        //-- -we can either use initializer list or we can use super().. but we cannot use both in same constructor.. 
    print('Constructor of B called');
  }
}

void main() {
  var obj = B(10, 20);
}
------------------------*/