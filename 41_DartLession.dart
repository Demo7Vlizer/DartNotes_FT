//-- Abstract method and abstract class in Dart

//-- abstract method &  abstract class

//-- The methods without body and defination is known as  abstract methods..

/*-----------------
abstract class Abc{
    void test();
}

class Xyz extends Abc{
  void test(){
    print("This is a test method");    //-- Now the test method is implemented in the child class..  either it'll show error.. 
  }
}

void main(){
    // var obj = Abc();
    var obj = Xyz();
    obj.test();
}
-------------------*/

//--------------------------------------------------------------------------------------------------------------------
//-- Let's see real significance of abstract class..
/*
  so the abstract method or abstract class is basically used to force a subclass to override specific method from 
  the subclass ..
  -------------------------------
  Consider i want to define a class Account and I don't want to define this metohds withdraw and deposit rather i want that 
  subClass means whatever class that extends ... this account this class has to override this methods withdraw and deposit 
  so for that purpose we can make our methods abstract.. and to put the method abstract we should have the abstract class that 
  is what the extact use of abstract methods and abstract claass. here.. 
  ---------------------------------
   understanding from different scenario...
   consider we just working on the application for some bank system as as we know that application is not developed by a single 
   person it is developed by the team so consider there some team who is working over the saving account and there is another team 
   that is working on the current account.. 
   so as the team leader what we will do we will create the class called account and we will put two methods say abstract withdraw 
   and the deposit and we will ask the team that they have to just explain our class account and for the current account.. 
   so why we will do that so it gives us assurance it gives us guarantee that both this saving account and current account class 
   will have the two methods that we want to impliment means we can have a restriction , we can have force for these classes 
   that will do whatever we want to do or i will instruct them so that is assurance..
   FOR THE INDUSTRIES POINT OF VIEW.. - abstract method acts as this specification.. specification means telling.. what to do without 
   explaining how to do so whenever we have the abstract methods means it is telling.. a subclass that they have to define with withdraw methods 
   they  have to define this the methods called the deposit .. 
   -> how to define that one what to write inside that one is the decision of the subClass..
   -> But what to do is the decision of superClass... and how to do that one it is the decision of the subClass.. 
   ------------------------------------
   And whenever we've the concrete methods that is completely different method inside the subClass.. means inside the superClass
    inside the superClass inside the abstract class.. then such methods will  now act as the guideline for subClass.. so make sure 
    that whenever we have abstract class.. abstract class contains the guidelines and specification.. for the subClass so 
    guidelines are not need to be overwritten means it's choice of subclass but it's compulsory to implement all the specification.. 
    that are given by the superclass that is by the abstract class to the subClass. 

    https://youtu.be/YT0OtP5bXzg?list=PLeKQz1VjpjFqqXLvQ8rTnYxZcUqEGA0dm&t=482
      
 */

abstract class Account {
  //-- We've abstract class..  called Account..  that contains two abstract methods..  one is non abstract method..
  // fields

  void doSomething() {
    //
  }

  void withdraw(double amount);
  void deposit(double amount);
}

//-- Now we've the two subCLass of super classes of Account..

/*
class SavingAccount extends Account {
}

class CurrentAccount extends Account {
}
*/

//-- Abstract method and abstract class in Dart

//-- abstract method &  abstract class

//-- The methods without body and defination is known as  abstract methods..

/*-----------------
abstract class Abc{
    void test();
}

class Xyz extends Abc{
  void test(){
    print("This is a test method");    //-- Now the test method is implemented in the child class..  either it'll show error.. 
  }
}

void main(){
    // var obj = Abc();
    var obj = Xyz();
    obj.test();
}
-------------------*/

//--------------------------------------------------------------------------------------------------------------------
//-- Let's see real significance of abstract class..
/*
  so the abstract method or abstract class is basically used to force a subclass to override specific method from 
  the subclass ..
  -------------------------------
  Consider i want to define a class Account and I don't want to define this metohds withdraw and deposit rather i want that 
  subClass means whatever class that extends ... this account this class has to override this methods withdraw and deposit 
  so for that purpose we can make our methods abstract.. and to put the method abstract we should have the abstract class that 
  is what the extact use of abstract methods and abstract claass. here.. 
  ---------------------------------
   understanding from different scenario...
   consider we just working on the application for some bank system as as we know that application is not developed by a single 
   person it is developed by the team so consider there some team who is working over the saving account and there is another team 
   that is working on the current account.. 
   so as the team leader what we will do we will create the class called account and we will put two methods say abstract withdraw 
   and the deposit and we will ask the team that they have to just explain our class account and for the current account.. 
   so why we will do that so it gives us assurance it gives us guarantee that both this saving account and current account class 
   will have the two methods that we want to impliment means we can have a restriction , we can have force for these classes 
   that will do whatever we want to do or i will instruct them so that is assurance..
   FOR THE INDUSTRIES POINT OF VIEW.. - abstract method acts as this specification.. specification means telling.. what to do without 
   explaining how to do so whenever we have the abstract methods means it is telling.. a subclass that they have to define with withdraw methods 
   they  have to define this the methods called the deposit .. 
   -> how to define that one what to write inside that one is the decision of the subClass..
   -> But what to do is the decision of superClass... and how to do that one it is the decision of the subClass.. 
   ------------------------------------
   And whenever we've the concrete methods that is completely different method inside the subClass.. means inside the superClass
    inside the superClass inside the abstract class.. then such methods will  now act as the guideline for subClass.. so make sure 
    that whenever we have abstract class.. abstract class contains the guidelines and specification.. for the subClass so 
    guidelines are not need to be overwritten means it's choice of subclass but it's compulsory to implement all the specification.. 
    that are given by the superclass that is by the abstract class to the subClass. 
      
 */

/*---------------------------------------
abstract class Account {  //-- We've abstract class..  called Account..  that contains two abstract methods..  one is non abstract method..  
    // fields

    void doSomething() {
        //
    }

    void withdraw(double amount);
    void deposit(double amount);
}

//-- Now we've the two subCLass of super classes of Account.. 
class SavingAccount extends Account {
}

class CurrentAccount extends Account {
}
------------------------------------------*/

//--------------------------------------------------------------------------------------------------------------------
/*
  We've class called Shape which is the abstract class and that contains two fields dim1 and dim2 
  and we've two parameter constructor that initialize the value of dim1 and dim2 then we've mehtod called area and that is 
  abstract here and as it is abstract we need to make our class abstract and that's what we've done smartely here..
  then we've the class for rectangel that acts as a subclass for the shape class and as we know that the super class don't 
  have it the default constructor that's reason we need to put a call to the super class construct using the super so that's 
  what we've done here.. means we've a rectangle class constructor that accept the value of the length and breadth that is we 
  passing to the dim1 and dim2  by means of this super class constructor so if you don't know what is this hooker and how to use 
  that one.. then what we've done as we know that whenever we extends the abstract class it's compulsory or the subClass to overwrite 
  the abstract method present in the abstract class and that's what we've followed here and with respect to the guidelines given by the dart 
  we've written here overwrite so this is the annotation .. then we've a proper implementation of this void area.. method which is 
  simply printing the are of rectangle using some formula then we've class called traingle it is also extending class called shape 
  and acts class a with the subtitle .. class shape is the abstract class we've to define this area methods beacause it's compulsory..
  then we've define here the area of triangle that is printing the area of traingle using some formula then it again has a d2 parameter 
  constructor and it's compulsory for us to make a call to superClass constructor by passing two parameters here inside the main 
  we've created two objects the obejects of rectangle and object of traingle here and over those objects of rectanle and traingle 
  we've just called the methods called area and when we will run that one it'll simply print the area of the rectangle and triangle.. 
*/

/*
abstract class Shape {
    int dim1, dim2;

    Shape(this.dim1, this.dim2);

    void area();
}

//
class Rectangle extends Shape {
    Rectangle(int length, int breadth) : super(length, breadth);

    @override
    void area() {
        print('Area of Rectangle = ${dim1 * dim2}');
    }
}

//
class Triangle extends Shape {
    Triangle(int base, int height) : super(base, height);

    @override
    void area() {
        print('Area of Triangle = ${0.5 * (dim1 * dim2)}');
    }
}

  void main() {
      Rectangle r = Rectangle(10, 5);
      Triangle t = Triangle(10, 20);

      r.area();
      t.area();
  }
*/

//--------------------------------------------------------------------------------------------------------------------
//--10 Question related to the abstract class and abstract method..

//-- 1) Why abstract class can't be instantiated..

/*
abstract class Test {
  void showData();
}

class Demo extends Test {
  @override
  void showData() {
    //
  }
}

 void main() {
  var obj = Demo();
  obj.showData();
}
*/

//********************************** */
//-- 2) Can we define constructor in the abstract class..
//-- If yes how many types of constructor we can define in the abstract class..

/* 
  Yes it's possible to define constructor in the abstract class..  
 */

/*
abstract class Test {
  Test() {
    print("Test() called");
  }

  Test.someName() {
    print("Test.someName called");
  }
}
*/

//********************************** */
//-- 3) When constructor of abtract class will be called..

/*
  Absract class cannot be instantiated and we cannot create object of abract class..  
  Then when abtract class constructor will be called.. or what makes significance of abtract class constructor.. 
  ------------------------------------- 
  We have a class called Test and that contains two constructors one is default constructor and other is named constructor.. 
  just for better understanding we've created the two different constructor.. inside the abtract class called Test..
  then we've a subclass called Demo and that extends the class Test and that contains a constructor.. 
  Demo has also got the nice default constructor .. 
  inside the main we've created simply object.. of Demo()..
  ---------------------------------------
  So we know that whenever we create the object of subClass before calling the constructor of subClass .. The default constructor 
  superClass gets called and that's we have seen in the video called constructor inheritance and we know same thing is applicable for the abtract 
  class also ....
  -------------------------------------
  When we run this program we will observe here before calling the constructor of demo the constructor of text will be called first then the 
  constructor demo ... 
  This is the place where the object or where the constructor of abstract class needs called so whenever we create object of subClass
  the appropriate constructor of that absract class gets called we know by default it is calling the default constructor so we can change it
  to let's say we can  ..

*/

/*
abstract class Test {
  Test() {
    print('Test() called');
  }

  Test.someName() {
    print('Test.someName called');
  }
}

class Demo extends Test {
  // Demo() {               //-- Firstly it'll call.. the superClass and then call the subClass..
  // Demo():super(){          // -- Firstly it'll call.. the superClass and then call the subClass..
  Demo():super.someName(){   //--  Firstly it'll call.. the named constructor. and then call the subClass..
    print('Demo() called');
  }
}

void main() {
  var obj = Demo();
}
*/

//********************************** */
//-- 4) Can we implement abstract class?


/*
abstract class Test {
  //abstract method
  void showData();

  // concrete method 
  void doSomething(){
    //
  }
}


// class Demo extends Test{
//   // 
// }

class Demo implements Test{
  //
}
*/


//********************************** */
//--  5) Can we have all abstract or all concrete methods in abstract class?

/*  
  Yes it's possible means we've a class which is abstract class and that can contain all abstract method or we can have a class which is 
  abstract  and that conatains no abstract methods means we can have all concrete methods and even we can have class which is abstract 
  that contains a combination of concerete as well as the abstract methods 
 */



//********************************** */
//-- 6) What is the practical use of abstract class?

/*  
  - Whenever we want a subClass to override a specific method present in superClass means we want to host a subClass that this method must be
  overriden by a subClass anyhow any case then in this case we have to define that method as abstract and for that method abstract the class 
  must be abstract and we'll ask that we'll ask that subclass that it has to extend this class now as subClass is extending abstract class 
  it's compulsory for that class to implement or override the that specific methods 
 */

/*
abstract class Test {
    // abstract method
    void showData();

    // concrete method
    void doSomething(){
        //
    }
}

class Demo extends Test{
    //
}
*/


//********************************** */
//-- 7) Name some abstract classes in Flutter that we deal with 

/*  
  BuildContext  ->   this is abstract class..
  Widget          -> this is also abstract class..
  CustomPainter  -> this again a abstract class..
  Inherited Widget  -> so this is again a abstract class.. 

  --- So there are so many abstract class in flutter.. 
 */



//********************************** */
// 8) What happens when sub class won't
// implements abstract methods of abstract class?
//-----------------------------------------------

/* 
  We know that whenever we have the abstract class so here is abstract class contains the method Test ..
  so it is being asked that what if this class a don't want to  implement the methods present in that class so 
  difinitely the class b will have error because class b is not following the convention what the abstract class is 
  so there will be error means you can't compile this program 
 */


/*
abstract class A{
    void test();
}

// class B extends A{     //--there is error showing.. 
abstract class B extends A {       //-- The error will be disappear after adding abstract
}

void main(){
}
*/


//********************************** */
// 9) Can we define static members in abstract class?
//---------------------------------------------------

/*  
  it's completely fine to have static variables and static methods inside the abstract class because 
  whenever we want to use the static memebers we never need to deal with the object instead we have to use  class not dot method name 
  so that makes the sense that we can have the static members of abstract class and we don't need to instantiate that one simply we can 
  make the use of that one and whenever .. moreover when these methods or when when the static members .. when we think about this one 
  inside the class b so it's not a case that you are getting it readily that means any of any case the static memebers of this superclass
  has to be used by means of the class name dot something that inside the subclass 
 */

/*
abstract class A{
    static int x = 10;

    static void test(){
        //
    }
}

class B extends A{
}

void main(){
}
*/


//********************************** */
// 10) Can we define getters & setters as an abstract?
//--------------------------------------------

/*  
  We can observe here we've the class A which is abstract class that contains the final field x means underscore with vale 10
  then we've a getter that returns the value of _x 
  -----------------
  and then we've setter also that it's implementing the value of x so it's completely fine here.. 
  But we know that we can't access this getter and setter here directly here because it's can't be instantiated so that's why i have defined 
  the class.. B and we can instantiate this class B here by means of the object of B we can simply invoke or we can simply use these getter 
  and setter over this object.. of B you can observe here we getting output 20 for this data here... 
  -------------------
  But makes sure that don't try   to use this getter and settter as a static otherwise you might be in trouble .. 

 */

abstract class A {
  int _x = 10;

  int get x => _x;

  set x(int value) => _x = value;
}

class B extends A {
  //
}

void main() {
  var obj = B();
  obj.x = 20;
  print(obj.x);
}
