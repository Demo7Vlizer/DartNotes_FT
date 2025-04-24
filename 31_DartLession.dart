//-- Const constructor in Dart | Dart const constructor

/*
---

**Topics to cover**
1. What is const Constructor?
2. Rules for const Constructor.
3. Benefits of const Constructor.

---
*/

//-------------------------------------------------------

/*
---

**What is const constructor?**

Constructor defined using the `const` keyword is known as a `const constructor`.

```java
class Test {
    final int x;
    const Test(this.x);
}
Test obj = const Test(10);
```

- It creates compile-time constant objects.
- It creates immutable objects.
- It creates canonical instances, which are represented using canonical representations. They are stored in a special lookup table using canonical signatures, which are then reused.

---
 */

//--------------------------------------------------------------

/*------------------------
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

void main() {
  Point p1 = const Point(10, 20);
  Point p2 = const Point(10, 20);

  print(p1.hashCode);   //-- 778790283
  print(p2.hashCode);  //-- 778790283 
  print(identical(p1, p2));  //-- TRUE

  Point p3 = Point(50, 60);
  Point p4 = Point(50, 60);

  print(p3.hashCode);   //-- 956203783
  print(p4.hashCode);  //-- 1063771689
  print(identical(p3, p4));  //-- false
}
--------------------------*/

//--------------------------------------------------------------
//-- Rule of const constructor
//- To defined const constructor all fields of class must be final

/*----------------
class Point {
  final int x;
  final int y;   //-- If we remove the final it'll showing an error eg.. - Can't define a const constructor for a class with non-final fields in line no. 73.. 

  const Point(this.x, this.y);   
}
-----------------*/


//--------------------------------------------------------------
//-- Rule of const constructor
//- const constructor must be generative constructor .. we cannot use the factory constructor.. 

/*
class Point {
    final int x;
    final int y;

    factory const Point(this.x, this.y);   //-- after adding factory constructor it'll immediately showing an error .. 
}
*/

//--------------------------------------------------------------
//-- Rule of const constructor
//- it cannot have the body.. 

/*
class Point {
    final int x;
    final int y;

    const Point(this.x, this.y){      //-- As adding body in there it'll immedtialtely showing error.. 

    }
}
*/

//--------------------------------------------------------------
//-- Rule of const constructor
//- Only class conataining const constructor is instantiated using const keyword.. 

/*-----------------------------
class Point{
  final int x;
  final int y;

  const Point(this.x, this.y);  //-- After adding const keyword the error will gone in line no. 119. 
}

void main(){
  Point p = const Point(10, 20);
}
--------------------------------*/

//--------------------------------------------------------------
//-- Rule of const constructor
//- Benefits of const is seen when const is used to defined the object.. 


//--------------------------------------------------------------
//--  Benefits of const constructor 
/* 
  Benefits for const constructor

✓ In JIT environment (Development phase), it improves the performance of application as creates the canonical instance

For e.g. Padding(
        padding : const EdgeInsets.all(16)
        )

✓ Widget created as const will never re-build when state of app changes

✓ In AOT environment (Flutter release builds) all constant objects are evaluated and 
canonicalized at compile time, then serialized into snapshot. When we start the application 
the snapshot is loaded into memory and all constants come into existence. 
They are not loaded lazily. They are never garbage collected.
 */
