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

class Person{
   //
}

class Employee extends Person{
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

class A {
    // 10 methods
}

class B {
    // 10 methods
}

class C {
    // 10 methods
}


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

