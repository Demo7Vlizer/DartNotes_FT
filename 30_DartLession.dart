//--  Sections for initialization in constructor 

/* 
**"Field Initializers & Initializer List"**

**"Constructor may has five sections"**  
1) **Name of constructor** (Unnamed & named constructor)  
2) **Parameter List or field initializer**  
3) **Initializer list**  
4) **Redirecting call using this()**  
5) **Body** (Definition of constructor)

 */


/*
---

**Field Initializers & Initializer List**  
Constructor may have five sections:
1. Name of constructor (Unnamed & named constructor)
2. Parameter list or field initializer
3. Initializer list
4. Redirecting call using `this()`
5. Body (definition of constructor)

Out of these five, the following three sections are used for initialization of fields:
1. Field initializer (Syntactic sugar for initialization)
2. Initializer list
3. Body (definition of constructor)

---  
 */

//------------------------------------------------------------

/*-----------------------
class Point {
    int? x, y;

    // Field initializer
    Point.constructor1(this.x, this.y);

    // Initializer list
    Point.constructor2(int a, int b) : x = a, y = b;

    // Body i.e. definition of constructor
    Point.constructor3(int x, int y) {
        this.x = x;
        this.y = y;
    }
}
---------------------------*/

//------------------------------------------------------------
/* 
  Field Initializers & Initializer List :-
  -When fields are non-nullable or final, they must be initialized      either as field initializers or in the initializer list, because      these run before the body of the constructor.
 */

/*------------------------
class Point {
  int? x;   
  int? y;

  Point(int x, int y) {
    this.x = x;       //-- in body here we can only.. initialize the nulable and late keyoword  will be initialize inside the boyd..  but  or the non-nullable field and final field we cannot initialize inside the body.. either it'll give error 
    this.y = y;
  }
}
---------------------------*/

//********************************************************

/*
class Point {
  int? x;   
  int? y;

  Point(this.x, this.y);   //-- This also quite fine. because we initialize inside the initializer field.. 
}
*/

//********************************************************

/*----------------
class Point {
  int? x;   
  int? y;

  Point():x=10,y=35;  //-- this concept called as.. initializer list - in here it'll immediately assign all the varible instance inside x and y 
  //-- Most of the programmer prefer to use field initializer over the initializer list.. 
}
----------------*/

//------------------------------------------------------------
/* 
  Field Initializers & Initializer List :-
  -Both field initializer & initializer list can't be use for            initialization.. 
 */

/*---------------------
class Point {
  int? x;   
  int? y;

  Point(this.x, this.y):x=10, y=20; //-- In here we getting error beacuse of that -- Both field initializer & initializer list cannot be allowed here - Out of these two, one will have to be removed. then it'll completely fine. 
}
-------------------*/

//********************************************************

/*----------------
class Point {
  int? x;   
  int? y;

  Point(int a , int b):x=a, y=b; //-- in here we don't get error because this is normal parameter list of constructor that we using // In here we just  using initializer list for perform initialization.. 
}
--------------------*/

//------------------------------------------------------------
/* 
  Field Initializers & Initializer List :-
  - When initializing fields is single goal of constructor, then body     is optional.. 
 */

/*-----------
class Point {
    int x;
    int y;

    Point(this.x, this.y){
      //
    }
}
-------------*/


//------------------------------------------------------------
/* 
  Field Initializers & Initializer List :-
  - Field initializer or initializer list is not allowed for factor       constructor
 */

/*---------------------------
class Point {
  int? x;
  int? y;

//   factory Point(this.x, this.y) {  //-- In here getting eroro for using field initializer.. Let's remove field initializer.. and use initializer list.. 
    factory Point():x=10, y=20 {   //-- Even we having error while using initializer list.. because it's now allowed inside the factory constructor.. 
    return Point.demo();
  }

  Point.demo();
}
----------------------------*/

//------------------------------------------------------------
/* 
  Field Initializers & Initializer List :-
  - Both initializer list & redirection using this() is not allowed.. 
 */

/*----------------
class Point {
  int? x;
  int? y;


Point.demo();

Point() : x = 10, y = 20;  //-- But along with initializer list let's use redirection using 'this'
  
  Point() : x = 10, y = 20:this.demo();  //-- In here we gettting error because we can't use both initializer list and redirection either we've to use initializer list or redirection 'this'

}
-------------------*/





