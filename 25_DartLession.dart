//-- Dart Constructor with features | Constructor in Dart

/*------------------------------------
class Person {
  String? name;
  int? age;

  void getData(String n, int a) {
    name = n;
    age = a;
  }

  void showData() {
    print('Name=$name');
    print('Age=$age');
  }
}

void main() {
  Person p = Person();

  p.getData('Sam', 21);          
  p.showData();

  /* -- Print OutPuts  --
    Name=Sam
    Age=21  
  ---------------------*/
}
-----------------------------------*/

//-------------------------------------------------------------------------------
//-- Without any value.. assign...

/*--------------------------------------------
class Person {
  String? name;
  int? age;

  void getData(String n, int a) {
    name = n;
    age = a;
  }

  void showData() {
    print('Name=$name');
    print('Age=$age');
  }
}

void main() {
  Person p = Person();

  // p.getData('Sam', 21);      //-- If we remove this.. it'll print like this.. --      
  p.showData();

  /* -- Print OutPuts  --
    Name=null
    Age=null  
  ---------------------*/
}
---------------------------------------------*/

//-------------------------------------------------------------------------------
//-- Let's try to solve error different different way..

/*-------------------------------
class Person {
  late String name;
  late int age;

  void getData(String n, int a) {
    name = n;
    age = a;
  }

  void showData() {
    print('Name=$name');
    print('Age=$age');
  }
}

void main() {
  Person p = Person();
  p.showData();         //-- It'll throw runTime error.. 
}
------------------------------*/

//-------------------------------------------------------------------------------
//-- Let's try to solve error another way... By the help of constructor..

/*---------------------------------
class Person {
  late String name;
  late int age;

  Person(String n, int a) {
    name = n;
    age = a;
  }

  void showData() {
    print('Name=$name');
    print('Age=$age');
  }
}

void main() {
  Person p = Person('Siddh', 25);
  p.showData();

  /* -- Print OutPuts  --
    Name=Sidh
    Age=25  
  ---------------------*/
}
----------------------------------*/

//-------------------------------------------------------------------------------
//--

/*-------------------------------
class Person {
  late String name;
  late int age;

  Person(this.name, this.age);

  void showData() {
    print('Name=$name');
    print('Age=$age');
  }
}

void main() {
  Person p = Person('Rahul', 30);
  p.showData();

  /* -- Print OutPuts ---
    Name=Rahul
    Age=30  
  ---------------------*/
}
-----------------------------------*/

//-------------------------------------------------------------------------------
//-- 1)- Name of the constructor is same as name of the class..

/*--------------------------------------
class Abc {

/*-----------
  abc() {        //-- this is not a constructor this is a methods if we write like this.. 
    print('Abc() constructor called');
  }
-----------*/

  Abc() {         //-- Now This is a constructor.. 
    print('Abc() constructor called');
  }
}

void main() {
  Abc reference = Abc();
}
--------------------------------------*/

//-------------------------------------------------------------------------------
//-- 2) - Constructor cannot have return type not even void..

/*--------------------------------------
class Abc {

/*-----------
  void Abc() {        //-- We getting here if we using void.. showing constructor cannot have return type  
    print('Abc() constructor called');
  }
-----------*/

  Abc() {         //-- Now This is a constructor.. 
    print('Abc() constructor called');
  }
}

void main() {
  Abc reference = Abc();
}
--------------------------------------*/

//-------------------------------------------------------------------------------
//-- 3) - Constructor is invoked automatically when object is created..

/*--------------------------------------
class Abc {

  Abc() {         //-- Now This is a constructor.. 
    print('Abc() constructor called');
  }
}

void main() {
  Abc reference = Abc();

  Abc();
  Abc();

    /* -- Print OutPuts ---
    Abc() constructor called
    Abc() constructor called
    Abc() constructor called
    -----------------------*/
}
--------------------------------------*/

//-------------------------------------------------------------------------------
//-- 4) - Constructor cannot be static..

/*--------------------------------------
class Abc {

/*-----------
  Static Abc() {        //-- We getting error this will show constructor cannot be static.. 
    print('Abc() constructor called');
  }
-----------*/

  Abc() {         //-- Now This is a constructor.. 
    print('Abc() constructor called');
  }
}

void main() {
  Abc reference = Abc();
}
--------------------------------------*/

//-------------------------------------------------------------------------------
//-- 5) - When no Constructor is defined in the class, Dart provides the default constructor..

/*---------------------
class Abc {
  //           //-- There is no any constructor while there no any error showing because of that dart provides default constructor.. this also called as empty constructor 
  Abc(){

  }
}

void main() {
  Abc refrence = Abc();
}
-------------------------*/

//-------------------------------------------------------------------------------
//-- 6) - Dart provides syntactic sugar to initialized fields using Constructor..

/*-------------------
class Person {
  late String name;
  late int age;

  Person(String n, int a) {   
    name = n;
    age = a;
  }

  void showData() {
    print('Name=$name');
    print('Age=$age');
  }
}
----------------------------*/

//************************************************ */

/*-------------------
class Person {
  late String name;
  late int age;

  Person(String n, int a);       //== This is the traditional way to define constructor.. 

  void showData() {
    print('Name=$name');
    print('Age=$age');
  }
}
----------------------------*/

//************************************************ */

/*-------------------
class Person {
  late String name;
  late int age;

  Person(this.name, this.age);     //-- this is called as syntactic sugar to initialized the filed using the constructor.. 

  void showData() {
    print('Name=$name');
    print('Age=$age');
  }
}
----------------------------*/

//-----------------------------------------------------------------------------------
//-- 7) - Constructor support positional & named parameters as well combination of them..

/*------------------------------------
class Person {
  late String name;
  late int age;

  // Person(this.name, this.age);      //-- This in positional parameters 
  // Person({this.name, this.age});      //-- Now we convert into named parameters.. (it's still showing error) 
  Person({required this.name, required this.age});      //-- Now we convert into named parameters.. (AFTER ADDING REQUIRED KEYWORD THE ERROR IS RESOLVE.. ) 


  void showData() {
    print('Name=$name');
    print('Age=$age');
  }
}

void main() {
  // Person p = Person('Sam', 21);         //-- Now we getting here error also because of that we've to also define the name and age .. 
  Person p = Person(name: 'Sam', age: 21);         
  p.showData();

  /*-- print Outputs --
  Name=Sam
  Age=21
  -------------*/
}
------------------------------------*/

//************************************************************ */

/*------------------------------------
class Person {
  late String name;
  late int age;


  Person(this.name, {required this.age});      //-- Now we convert into combination of named and positional parameters.. 


  void showData() {
    print('Name=$name');
    print('Age=$age');
  }
}

void main() {

  // Person p = Person(name: 'Sam', age: 21);     //- Now we getting here because of that .. we've to rem0ve the name: because we make this positional parameters so there is no need for this.. 
  Person p = Person('Sam', age: 21);     
  p.showData();

  /*-- print Outputs --
  Name=Sam
  Age=21
  -------------*/
}
------------------------------------*/

//-----------------------------------------------------------------------------------
//-- 8) - Dart does not have constructor overloading, but using named Constructor it's possible to define multiple constructors in the class..

/*------------------------------------
class Person {
  // 
  late String name;
  late int age;

  // 
  Person(){
    //
  }

  // Let we define one more constructor    //= We can define as many as constructor in the class as we want simply by using the named constructor .. 
  Person.someOther(String n, int a){       //-- it's showing error because we cannot make multiple methods and constructor with the same name .. but with this way we can..  
    //    
  }


}

void main(){
  Person p = Person();
  Person p = Person.someOther('Mark', 65);

}
------------------------------------*/

//-----------------------------------------------------------------------------------
//-- 9) - There can be public as well as private Constructor based on your requirement..
//-- We know that Whenever we write some variable are methods simply by using underscore.. that methods or variable becomes private.. variable..
//-- Basically we made the constructor private in two different situation.. The first is we don't want anyone to create the instance or object of this class  out of this particular library..
//-- And Second one is When we want to impliment.. singleton class design pattern ..

/*------------------------------------
class Person {
  //
  late String name;
  late int age;

  //
  _Person() {       //-- not it's a private constructor aftre adding underScore.. We will only access this in same dart file.. not the outside 
    //
  }

  Person.someOther(String n, int a) {
    //
  }
}
------------------------------------*/

//-----------------------------------------------------------------------------------
//-- 10) - Constructor are not inherited, rather sub-class constructor has to call desired super-class  constructor..

/*------------------------------------------
//-- We've two diffrent class 1st is Father and 2nd is Son class.. 
//-- The father class is a super class and Son class extending the father class 
class Father {
  Father(int a) {
    print('Father constructor called');
  }
}

class Son extends Father {
  Son():super(10) {
    print('Son constructor called');
  }
}

void main() {
  Son s = Son();
}
-------------------------------------------*/

//-----------------------------------------------------------------------------------
//-- 11) - factor constructor must return an object explicitly

/*------------------------------------------
class Test {
  Test.someName() {
    //
  }

  factory Test() {
    // that whenever we write factory keyword before any constructor that becomes a factory constructor .. for this constructor compulsory to return to specific object. some instance.. 
    return Test.someName();
  }
}

void main() {}
-------------------------------------------*/

//-----------------------------------------------------------------------------------
//-- 11) - One constructor may invoked another constuctor.. - This concept basically called  The constructor redirecting.. 

class Test {

  //-- This is default constructor.. 
  Test() {
    print('Test default constructor');
  }

  //-- And this one named constructor.. 
  Test.someName() : this();          //-- Whenever we called this this() constructor it'll invoked default constructor.. 

  void main() {
    Test t = Test.someName();     //  Test default constructor
  }
}

