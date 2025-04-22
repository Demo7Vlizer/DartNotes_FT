//-- Factory Constructor in Dart | Dart factory constructor

/*---  Topics to Cover --------

- **What is Factory Constructor?**
- **Characteristics of Factory Constructor**
- **Use of Factory Constructor (4 Examples)**

 -------------------------*/

//------------------------------------------------------------------------------
//-- What is Factory Constructor?

/* :

**Constructor written using the factory keyword is known as a factory constructor.**

- It is similar to a static method and must return an instance using the `return` statement.

```dart
class Abc {
  Abc() {}

  Abc.demo() {}

  factory Abc.test() {
    return Abc();
  }
}

void main() {
  Abc obj = Abc.test();
}
```

 */

//------------------------------------------------------------------------------
//-- **Characteristics of Factory Constructor:**

// - Must return an instance (same or subclass) using the `return` statement.
// - It can be named or unnamed & invoked like normal constructor...
// - It can accept parameters as required..
// - Cannot access instance members of class..
// - It has no access to 'this' reference
// - Can access static members of class..
// - There can't be factory & generative constructor with the same name..
// - Mutliple factory constructors are possible..
// - It can't invoke super class constructor using 'super'
// - It can't be called by sub class constructor using 'super'

//------------------------------------------------------------------------------
//--// Must return an instance (same or subclass) using the `return` statement.

/*--------------------------
class Abc {
  Abc();          //-- Default constructor..
 
  Abc.someName();       //-- Named Constructor.. 

  factory Abc.callMe() {
    return Abc();           //-- It's compulsory to return the instance by using another constructor.. 
  }
}
---------------------------*/

//------------------------------------------------------------------------------
//--// It can be named or unnamed & invoked like normal constructor...

/*----------------------
class Abc {
  Abc();

  Abc.someName();

  factory Abc.callMe() {
    return Abc();
  }
}

void main() {
  Abc obj = Abc();
}
-----------------------*/

/**************************************************** */

/*-------------------------
class Abc {

  Abc.someName();

  factory Abc() {
    return Abc.someName();
  }
}

void main() {
  Abc obj = Abc();
}
----------------------------*/

//------------------------------------------------------------------------------
//--//  It can accept parameters as required..

/*
class Abc {
  Abc();

  factory Abc.callMe(int x, {required int y}) {     //-- Now there is a combination of named and positional parameters.. and this is named constructor with also factory.. 
    return Abc();
  }
}

void main() {
  Abc obj = Abc.callMe(10, y: 20);
}
*/

//------------------------------------------------------------------------------
//--//  Cannot access instance members of class..

/*-------------------------------
class Abc {
  int x = 10;

  Abc() {
    //--  Here we've default constructor.. it can be default or it can be named constructor.. basically it's has to be generative constructor..
    x = 100; //-- In this generative constructor we happlily use this instance variable it's quite fine..

    someMethod();     //-- There not showing any error that's gonna work fine.. 
  }

  void someMethod() {}

  factory Abc.callMe() {
    //-- But as this Abc.callMe is the factory constructor.. We cannot use this instance variable..
    x = 100; //-- Showing error Instance members can't be accessed from a factory constructor..
    someMethod();        //-- But we try to call it here Then observe here we will get another error because someMethod is actually a instance methods and it cannot be called here..  
    return Abc();
  }
}
-----------------------------------*/

//------------------------------------------------------------------------------
//--//--  It has no access to 'this' reference

/*-------------------------------------------
class Abc {
  int x = 10;

//--------------------
/* -- This gonna work also fine.. 
  Abc() {
    this.x = 100;
  }
*/

// /* -- This gonna work also fine.. 
  Abc(this.x)
// */

//------------------
/*
  factory Abc.callMe() {
    this.x = 100;            //-- this.x this will show here because we cannot use here inside the factory constructor.. 
    return Abc();
  }
*/

// /* -- Let's use in different way.. 
  factory Abc.callMe(this.x) {       //-- this.x this way also show here because we cannot use here inside the factory constructor.. 
    return Abc(10);
  }
// */
}
-------------------------------------------*/

/**************************************************** */
//--- Try to do different way....
/*-------------------------------------
class Abc {
  int x = 10;

  Abc(this.x);

  Abc.demo() : this(5);

  factory Abc.callMe():this(5) {         //-- Again we getting error.. 
    return Abc(10);
  }         
}
-------------------------------------*/

//------------------------------------------------------------------------------
//--//-- Can access static members of class..

/*--------------------------
class Abc {
    static int x = 10;

    Abc() {
        x = 100;
    }
 /*-----------------
    void demo() {
      
    }
 -----------------*/
  
    static void demo(){
      
    }

    factory Abc.callMe() {
        x = 100;           //-- We can access static members inside the factory constructor.. 
        demo();             //-- This also access after making them static members .. 
        return Abc();
    }
}
-----------------------------*/

//-----------------------------------------------------------------------------------
//--// There can't be factory & generative constructor with the same name..

/*--------------------------
class Abc {
  Abc() {
  }

  Abc.someNamed() {
  }

  factory Abc.someNamed() {      //-- We've the error with the same name of constructor.. 
    return Abc();             //-- It's possible to write here.. inside the the return .. 
  }
}
-----------------------------*/

//-----------------------------------------------------------------------------------
//--// Mutliple factory constructors are possible..

/*-----------------------------
class Abc {
  Abc() {
  }

  factory Abc.factory1() {
    return Abc();
  }

  factory Abc.factory2() {
    return Abc();
  }
}
-------------------------------*/

//-----------------------------------------------------------------------------------
//--// It can't invoke super class constructor using 'super'

/*---------------------------------------
class Father {
  Father();         //-- 1st is default one.. 
  
  Father.callMe(int a, int b);      //-- 2nd is named constructor.. 
  
}

class Son extends Father {
  
//   Son():super(){}            //-- if we write super without any parameter it'll call default constructror
  
  Son():super.callMe(10, 20){}   //-- it'll call the 2nd named constructor ..      
  
  Son.someName();

  factory Son.demo():super.callMe(10, 20) {           //-- If we try to do same thing with the factory constructor ..  there is we getting error we cannot use inside the factory.. constructor.. 
    return Son.someName();
  }
}
----------------------------------------*/

//-----------------------------------------------------------------------------------
//--// It can't be called by sub class constructor using 'super'

/*----------------------------------------
class Father {
  Father();
  factory Father.callMe() {
    return Father();
  }
}

class Son extends Father {
  Son();
  factory Son.createInstance() {
    
    return Son():super.callMe();   //-- We getting error.. because of that we cannot call the factory constructor using super constructor through the sub class constructor .. 
  }
}
----------------------------------------*/

//-----------------------------------------------------------------------------------
//--// Use of Factory Constructor..

//- To impliment factory designed pattern (Return sub class instance.. )

/*------------------------------------------
enum ShapeType {triangle, rectangle}

abstract class Shape {
  factory Shape(ShapeType type) {
    if (type == ShapeType.rectangle) {
      return Rectangle();
    } else {
      return Triangle();
    }
  }

  void draw();
}

class Triangle implements Shape {
  void draw() {
    print('Triangle');
  }
}

class Rectangle implements Shape {
  void draw() {
    print('Rectangle');
  }
}

void main(){
  var s1 = Shape(ShapeType.triangle);
  var s2 = Shape(ShapeType.rectangle);
  
  s1.draw();
  s2.draw();
  
}
------------------------------------------*/

//-----------------------------------------------------------------------------------
//--// Use of Factory Constructor..

//- To implement single designed pattern  ...

/*-------------------------
class Test {
  // static instance of Test class
  static final Test _instance = Test._internal();      // Why we using here static because of that we cannot use instance variable inside factory constructor .. and final is to for nobody change the value that given.. 

  // factory constructor
  factory Test() {
    return _instance;
  }

  // private constructor
  Test._internal();
}

void main() {
  Test t1 = Test();
  Test t2 = Test();

  print(t1.hashCode);        //-- Here we get same hashCode .. 820749686
  print(t2.hashCode);       //-- 820749686       --- That prove that t1 and t2  not refering to different object .. that they're refering same object. that all credit goes to factory constructor which singleton designed pattern we made.. by using factory construtor.. 
}  
-------------------------*/

//-----------------------------------------------------------------------------------
//--// Use of Factory Constructor..

//- Late initialization of non-nullable members/initialize after calculation..

/*-------------------------
class ResetPassword {
  String username;
  String newPassword;

  ResetPassword.reset(this.username, this.newPassword);

  factory ResetPassword(String username) {
    String password = generateRandomPassword();
    return ResetPassword.reset(username, password);
  }

  static String generateRandomPassword() {
    // some logic
    return 'Yo9Rtj3K';
  }
}
-------------------------*/

//-----------------------------------------------------------------------------------
//--// Use of Factory Constructor..

//- Return instance form catch..
//--- What's happening here.. if the object is available already inside the catch so it's returning object from the catch and if object is not available inside the catch it iis returning new instance and that is what add to catch will later use.. 

class Person {
  String name;
  static final _catchedUsers = {};

  Person._internal(this.name);

  factory Person(String name) {
    return _catchedUsers.putIfAbsent(name, () => Person._internal(name));
  }

  void showData() {
    print('$name : $hashCode');
  }
}

void main() {
  Person p1 = Person('Mark');
  Person p2 = Person('John');
  Person p3 = Person('Mark');
  Person p4 = Person('John');
  Person p5 = Person('Sam');

  p1.showData(); //  Mark : 860504741
  p2.showData(); //  John : 46910061
  p3.showData(); //  Mark : 860504741
  p4.showData();  //  John : 46910061
  p5.showData();  //  Sam : 41266585
}
