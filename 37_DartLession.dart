//--  10 essential Inheritance questions | Dart inheritance doubt

//--1) Why Dart does not support multiple inheritance ?
/* 
  Basically multiple inheritance is the inheritance where we have a single subClass which can have multiple subClasses 
  practically in dart it's not possible to write multiple super classes for the single class or for single subClass..
  --------------------------
  Consider we have two classes let's class a and class b we can observe here a class a has got method called void demo 
  and there is some definition of demo method here class b has got the same demo method it has same written type same method name 
  and the same parameter list and it has little different definition of the class .. or the method demo here 
  now we're here tyring to define the class  C here that trying to extends both class A and B class but make sure that this is not possible
  in another side in main trying to create a object of C and over the object of C we can observe here we tyring to to call method demo here.. 
  Now in C class as this C is extending A and B due to extend or inheritance the members of A and the members of B as well will come inside the C 
  it means class C will have two different versions of the method demo one that is coming A and another coming from the class B
  Now inside the main we trying to call the demo(); over this object of C class then there's a big question which demo method to call 
  that is coming from Class A or coming from Class B because it has two different versions of demo inside the Class C so which one to 
  call the call of that method demo cannot be resolved and this particular paroblem is called as the AMBIGUITY in the method called ..
  and there is no solution for this one in the most of languages means if you know the java and other programming languages so it's not possible 
  to solve this problem very easily that's why to solve that one they have remove the concept means they have removed the concept  of multiple 
  inheritance itself so that this kind of problem should not appear in your code.. and that is the reason the Dart also does not support this kind 
  of multiple inheritance 
 */

/*-----------------
class A {
   void demo() => print('demo() of A'); 
   }

class B {
   void demo() => print('demo() of B'); 
   }

class C extends A, B {
       // demo() 
    }

void main() {
   C obj = C(); obj.demo(); 
}
---------------------*/

//----------------------------------------------------------------------------
//--2) Why inheritance arrows are shown in up-word direction?
//-- (A <- B)

/*    
   Consider we've two  classes class Person and class Employee.. Here Person is acting as the super class and employee is acting as 
   a subClass now the observable thing here is if you look at the class person here so the class person is not saying that I want to send 
   properties of mine to anybody so it's look like the individual class so it is not giving anything to anybody but we observe the class 
   employee it's saying i want to extend Person means I want to get something from the class person so from this code  it's clear that 
   employee class wants something from another class means we can say person is not giving anything to anybody but employee wants something 
   from person thay's why the arrow has to be shown in upward direction...
*/

class Person {
  //
}

class Employee extends Person {
  //
}

//----------------------------------------------------------------------------
//--3) What's problem of copy-paste instead of inheritane ?

/*    
---------------------------------
   - the first problem is we've the code redundancy 
   - second is the size of your code or size of your program goes increasing if your're going to write multiple codes again and again 
      in the progarm 
   - And the third and the biggest or you can say the most ciritcal problem is consider if some method is out of this 10 method or might be 
   perticular method needs to be modified so we can modify the method in class a but you've to remember that these methods are used at several different
   classes in project so you've to go inside each and every class manually and you have to update that particular code or that particular thing that 
   you want to update in class A so that's why means this is how going to work.. 
   but consider you forget to modify something at a particular file or in particular class then in this situation you're going to paste lots of problems 
   so that's why it's recommneded to use inheritance it means if we have 10 methods in class A so using inheritance all the 10 methods are available in class B 
   and inside the classs C as well.. so if you want to modify something in some methods you simply have to modify in class A and forget about modifying this 
   one in your entire project wherever you're extending class A it is automatically modified because it's inheritance you're not doing copy paste activity..
-----------------------------------
 */

/*--------------------
class A {
    // 10 methods
}

class B {
    // 10 methods
}

class C {
    // 10 methods
}
----------------------*/

//----------------------------------------------------------------------------
//--4) Why constructor are not inherited..?

/* 
   Consider we've Class A and we know that we've class A the constructor of this class A will have the name called A 
   the constructor of this class A will have the name calledd A and when we have class B that extends A here then in order define 
   the concept of B the name of this constructor has to be B here now consider just for a few minutes that it's possible that the constructor 
   are getting inherited so what will happen here if we observe here as we're extending A it means the constructor of A will inherit in B
   okay it's not possible but just for understanding just say it's possible .. so what will happen here the constructor of A will be inherited class B 
   just imagine the constructor having name A does not have any sense in the class B because the constructor of B must have the name it should not have 
   any other name so the name A of the constructor has no meaning in class B that's why constructor are not inherited means no constructor of superclass
   is inhrited in A subclass rather you've to call the appropriate constructor of superclass through the the subclass constructor will talk about that one will later.. constructor in inheritance..

 */

/*------------
class A {
    A() {
        //
    }
}

class B extends A {
    B() {
        //
    }

    A() {        //-- This is not possible by the way.. 
      //
    }
}
------------*/

//----------------------------------------------------------------------------
//--5) What about private members in heritance?

/* 
-----------------------------------------
In **"a.dart"**, the class `A` defines two integer fields:
- `_privateField`: A **private** field, indicated by the underscore prefix.
- `publicField`: A **public** field, accessible from outside the class.

In **"b.dart"**, the class `B` extends `A` and contains a method `test()`:
- Assigning a value to `publicField` works, as indicated by the comment `// works`.
- Assigning a value to `_privateField` results in an error (`// error`), because private fields cannot be accessed directly by subclasses.

Here’s the extracted code:

```dart
// a.dart
class A {
  int _privateField;
  int publicField;
}

// b.dart
class B extends A {
  void test() {
    publicField = 10;  // works
    _privateField = 20;  // error
  }
}
```

This highlights **Dart's privacy rules**, where private fields (prefixed with `_`) are restricted to the file they are declared in. If `B` is in a separate file (`b.dart`), it cannot access `_privateField` from `A`.
------------------------------------------------
 */

//----------------------------------------------------------------------------
//--6) Does every Dart  class involve in heritance ?
/* 
   Consider we've a class for that particular class we don't want to write extend any other class so still that individual class is 
   a part of inheritance means weather this class is enjoying inheritance .. yes it's the part of inheritance ..
   each and every class in dart weather you make it inherited using some class or if keep it without inherting so still each every class in 
   dart will inherit the class means it will enjoy the inheritance so if we inheritance the class it's going to inherit our class but
   consider we've class that is not going to inherit any other class then such a class is inheriting the object class means each and every class 
   in dart extends object class .. except the class called null so makes sure that null class is the only one class in dart which does not inherit the class 
   called object and the null is an instance that represents the null object ...  
 */

/*-------------------
class A {}  //-- 

void main() {
  A obj = A();
//   obj.hashCode; 
//   obj.runtimeType;
//   obj.noSuchMethod('d');    //-- This are the things that we're getting from the object.. classes..
}
---------------------*/

//----------------------------------------------------------------------------
//--7)  Is inharitance is need for Flutter ? 

/*    
   Writing a first flutter application whenever we write some class or we use some widget here we write that partulcar class 
   and we go on writing extends a statelessWidget - inheritance is useful it is required in flutter each and everything in flutter
   is made using inheritance if we have a good programming experience of if we've sense of programming so makes sure that definitely 
   required it's definitely important to have   inheritance knowledge to impliment or to use better 
 */

/*    
-------------
_"Is inheritance is need for Flutter?"_

```dart
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Here you can design the UI of this screen
    );
  }
}
```

This snippet shows a Flutter `StatelessWidget` named `StartScreen`. Inheritance is used here because `StartScreen` extends `StatelessWidget`, making it a custom widget that follows Flutter's reactive framework.
---------------
 */


//----------------------------------------------------------------------------
//--8) Does inheritance finished if I learned extending class ?


/*
NO ! 

- **Abstract class**
- **Abstract method**
- **Interface**
- **Mixin**
- **Constructors in inheritance**

- After knowing this all you'll properly understand about inheritance

 */  


//----------------------------------------------------------------------------
//--9) Can i make class as final ? So that no one can inherit from it..

/* 
   If we're tyring to write as a final class A this if giving us error because in dart we cannot define A class as final 
   means we cannot create a class that is final means we cannot prevent it from the inheritance but however if we want our 
   class to prevent it from inheritance it's possible we can make the constructor private and we can use so many combination and all this things 
   so it's possible we can keep it procted from inheritance means nobody can inheritance that one but we cannot make it final means 
   we cannot use final keyword for the class final is only reserved or only use if for defining the final variables in the class 
 */


/*
//-- Error 
final clas A {
   //
}
*/



//----------------------------------------------------------------------------
//--10)  What is components & aggregation? It is different than inheritance?

/*   
---------- What is components & aggregation? It is different than inheri -----------------------------

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

----------
 */