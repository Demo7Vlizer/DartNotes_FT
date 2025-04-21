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