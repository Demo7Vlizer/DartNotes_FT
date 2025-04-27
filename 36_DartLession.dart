//-- Inheritance in Dart | Dart inheritance

/*  -- Topics to Cover.. 

- **What is Inheritance?**  
- **Benefits of Inheritance**  
- **Types of Inheritance**  
- **Class relations like Association, Aggregation & Composition**

 */

//-----------------------------------------------------------------------------------
//-- What is inheritance ?
/*  
---

**What is Inheritance?**

- Inheritance is the process in which one class acquires the properties of another class.
- The keyword **extends** is used to inherit the class in a given class.

```java
class SubClassName extends SuperClassName {
  // Code here
}
```

**Example:**

```java
class A {
  // 2 fields
  // 3 methods
}

class B extends A {
  // 1 field + 2 = 3 fields
  // 2 methods + 3 = 5 methods
}
```

---

**Class Hierarchy:**

- **A**: Super / Base / Parent class
- **B**: Sub / Derived / Child class

---
 */

//-----------------------------------------------------------------------------------
//-- Let's see with the help of practical example..

/*------------------
class A {
  //-- We've class called A that contains two fields  x and y and having two methods fun and the test
  int x = 10;
  double y = 1.5;

  void fun() => print('fun() of A class');

  void test() => print('test() of A class');
}

class B extends A {
  //-- Now we've a class B that contains own  one field z and having own one methods
  int z = 30;

  void demo() => print('demo() of B class');
}

void main() {
  //-- inside the main we've object of A() which is stored inside the reference of obj
  var obj = B();
  obj.fun(); //-- after extends A from B now we're able to access both members fields and methods..
}
----------------------*/

//-----------------------------------------------------------------------------------
//-- Benefits of inheritance
//-- Code reusability..
//-- Reduce redundancy
//-- Creates class hierarchy thus help to design the system in better way...

//-----------------------------------------------------------------------------------
//-- Types of Inheritance
//-- Single Inheritance  -- (A <- B)

class Employee {
  String? name;
  List<String>? skills;
  double? salary;

  // methods
}

class Manager extends Employee {
  String? department;
  List<String>? projects;

  // methods
}

//-----------------------------------------------------------------------------------
//-- Types of Inheritance
//-- Multilevel Inheritance  (A <- B <- C)

class Person {
  String? name;
  int? age;
}

class Doctor extends Person {
  List<String>? degrees;
  String? hospitalName;
  double? experience;
}

class Specialist extends Doctor {
  String? specialization;
}

//-----------------------------------------------------------------------------------
//-- Types of Inheritance   
//-- Hierarchical Inhertance  (A <- B .. A <- C)
//-- Where superClas can have multiple subClasses

class Shape {
  var dim1;
  var dim2;

  void setData(var dim1, var dim2) {
    this.dim1 = dim1;
    this.dim2 = dim2;
  }
}

class Rectangle extends Shape {
  void area() => print('Area of Rectangle = ${dim1 * dim2}');
}

class Triangle extends Shape {
  void area() => print('Area of Triangle = ${0.5 * dim1 * dim2}');
}

void main() {
  Rectangle r = Rectangle();
  r.setData(5, 4);

  Triangle t = Triangle();
  t.setData(10, 20);

  r.area();   //-- Area of Rectangle = 20
  t.area();  //-- Area of Triangle = 100.0
}


//-----------------------------------------------------------------------------------
//-- Types of Inheritance 
//-- Multiple Inheritance   -- Where we've one subClass that has got multiple superClasses   (A -> C .. B -> C)

/*  
  In dart we cannot use multiple inhertance it means for a given class we can extend only one class directly by using 
  level it's possible means by using the multiple-level see C can have the B and C as the super classes but if you think 
  directly it's not possible to have mutliple super classes for the given class..
  What is the reason not supporting multiple inheritance   
 */

//-----------------------------------------------------------------------------------
//-- Different class relatioin that we can have.. 

/*    
  Class Relations : ->  
  : ->  Inheritance (IS A )  
  : ->  Association (HAS A )  

  - Inheritance (IS A ) : So whenever we use inheritance it creates IS a relation means we have two classes and two classes will have 
                          the relation called ( IS A )

  - Association (HAS A ) : One more type of class relation and that is called association .. Basically - let's say we have two classes
                            so without extending class means without inheriting a class it's possible for us to have relationship 
                            between two classes consider we have class A and B inside the class B we can create the object of class
                            so using that object also we can access the properties or members of the class a inside class b and that 
                            kind of relation is called as association so whenever we use association it's going to create the (HAS A ) RELATIONSHIP.. 
                            And there two types of Association the one is (Agggregation - (Weak Bouding )) and another one is called (composition -(Strong Bouding)) so 
                            whenever we've the weak bounding between the classes that type of association is known as aggregation and when we've this strong bouding 
                            between the classes that is referred as the composition... 
 */

//--------------------------------------------------------------------------------
//-- Example of : Inheritance (IS A )  
/*  
  We've class Person and we've class Employee we observe here the class employee using extends Person so whenever we use extend person
  means employee and person they are now having some relation as we use extends means we're using inheritance it create (IS A) relationship.. 
 */

/*---------------------
    class Person {
    //
    }

    class Employee extends Person {
        //
    }
-------------------------*/

//--------------------------------------------------------------------------------
/*
//-- Example of : Association (HAS A ) 
                  - (Agggregation - (Weak Bouding ))
                  - (composition -(Strong Bouding))

-------------------------------------------------------------
    - Consider here we've two individual classes music player and the class called engine 
      then we have another class called car we can observe here inside the car class we have two object we have the 
      object of music player and engine .. we can observe inside a class called car if we have the object of music player or this object 
      means by this object we can access the members of music player class so we can say the car and music player now they're connected 
      or now they have some relation but you can observe here it's not inheritance still it's possible to have some connection so it is not 
      blood relation kind of connection so this type of connection is called as association but the observable things is there can be a music player 
      without a car that means music player can exist we can use that one you can enjoy that one and there can be a  car without a music player 
      it's means this music player object and the car object or the car that we have there is not strong bouding it is having a weak bounding so that's why 
      we can say the car and music player they have the relationship or association that is called as the aggregation and on another hand we can observe here
      inside the car class we have created object called engine here and we can access the members of this engine class by using the object of engine inside
      the car so still there a relation between the car class and engine class but it's not inheritance because we're not extending the engine 
      inside the car class still we can access the properties that's also a kind of relationship and that is called association but we can 
      observe here engine is useless without a car to run the engine to use practical engine there has to be car or there has to be some vehicle 
      and a car is useless without engine means if it don't have engine we can't run or we can't use the car so there's a strong bounding between the car class
      and engine class so such a type of strong bounding or such a type of strong relation between the classes is known as a composition.. 
*/

class MusicPlayer {
    //
}

class Engine {
    //
}

class Car {
    var musicPlayer = MusicPlayer(); // Weak Bounding
    var engine = Engine(); // Strong Bounding
}