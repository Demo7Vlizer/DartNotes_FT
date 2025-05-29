
//-- Super keyword in Dart | Dart super keyword

//--  super
//-- super()

/*  
  Super is the keyword in dart can use super in two different ways first keys is simple super without any bracket
  And second is Super with opening and closing bracket .. that is using parenthesis.. 
  ---------------------------

  Let's talk about simple super means it is actually a keyword and the super is implicit reference that refers to the immedite super class 
  it means whenever we inherit some super class in a subclass so inside subclass we will by default or readly delete a reference such a reference 
  that always refers to it's immediate superclass object.. so we can say super reference is very much similar to this reference the only difference 
  is this refers to current invoking object and super reference refers to the immediate superclass object.. 
  WHAT IS THE USE OF SUPER... 
  Super is used to access the members of superclass inside the subClass means we can make the se use of in order to call the methods of superclass or 
  to access the instance members of superclass inside the methods on the constructor so of subClass .. 
  QUESTION - By default we can access all the members of superclass in the the subclass then why someone should use a super so we mostly 
  use super when we have the methods overwritten or when we have  a same name instance variables inside the subClass as well as inside the superClass
  so what will happen here when we've same name for members inside the super classes of class these subclass members will hide these superClass members 
  that's the reason whenever we access the members of superClass means we try to access that members the members of by default subClass will be access 
  and superClass must will be by default will be done so to access that one we can make use of super here 
 */

//--- Let's understand with the practical example..

/*--------------------------------
class A {
  int x = 10;

  void test() {
    print('test() of A called');
  }
}

class B extends A {
  int x = 20;

  @override
  void test() {
    print('test() of B called');
  }

  void showData() {
    print('value of x = $x');
    test();
    print(
        'value of x = ${super.x}'); //-- super keyword is used to access the members of superclass inside the subclass
    super
        .test(); //-- super keyword is used to call the methods of superclass inside the subclass
  }
}

void main() {
  var obj = B();
  obj.showData();
  /*----- PrintOutput -----
      value of x = 20
      test() of B called
      value of x = 10
      test() of A called
   ------------------------*/
}
---------------------------------*/

//----------------------------------------------------------------------------
//-- Limitation of super keyword

//-- 1) Cannot access the super class members in the static methods
/* 
  We cannot access the static member of super class.. means to access the static members of superClass inside the subclass also we have to 
  use the class name dot member name.. 
 */

/*--------------------
class A {
  static int someData = 10;
}

class B extends A {
  void showData() {
    print('value of someData = ${super.someData}');   //-- Error: The getter 'someData' isn't defined for a superclass of 'B'.
  }
}

void main() {
  var obj = B();
  obj.showData();
}
-----------------------*/

//----------------------------------------------------------------------------
//-- Limitation of super keyword

//-- 2)
/*
  Super Keyword can only be used inside the generative construtor.. and non - static members of subClass means we cannot use super inside this
  static method or inside the factory constructor.. 
*/

/*
class A {
  int x = 10;
}

class B extends A {
  void showData() {
    super.x = 20;
  }

  B();

  factory B.someName() {
    super.x = 20;              //-- Immediately the Dart is giving us error while using super keyword.. 
    return B();
  }
}

void main() {}
*/

//----------------------------------------------------------------------------
//-- Limitation of super keyword
//-- 3) So as we know using super we can access the members of super class... Super always refers to immediate super class.. 
//-- We cannot go beyond the level of immediate super class..   


/*--------------
class A {
  int x = 10;      //-- We cannot access by using super class from the c subClass 
}

class B extends A {
  int x = 20;
}

class C extends B {
  int x = 30;

  void showData(){
    print('x=$x');
    print('super.x=${super.x}');
  }
}

void main(){
  var obj = C();
  obj.showData();
  /* -- PrintOutPut----
    x=30
    super.x=20
  ---------------------*/
}
--------------*/

//----------------------------------------------------------------------------
//-- Limitation of super keyword
//-- Value of super cannot be modified.. 

/*-------------------
class A {
}

class B extends A {
    void showData() {
        super = null;       //-- We cannot write something like this.. 
    }
} 
--------------------*/

//----------------------------------------------------------------------------
//-- super()


/*-------------------
class A {   //-- We have class a that contains total 3 constructors..  the default constructor, named constructor and the parameterized constructor.. 
    A();
    
    A.withParameter(int x, int y);
    
    A.someName();
}

class B extends A {
    // B():super.someName() {   //-- In this case just before the calling default constructor of class B, the super() is called..  
    B():super.withParameter(10, 20) {   //-- Using super we can pass the parameters to the super class constructor..  and even call the named constructor and default constructor.. 
             
    }
}

void main() {
    var obj = B();
}
--------------------*/
