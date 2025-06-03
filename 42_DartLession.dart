//- Interface in Dart | Dart implicit & explicit interface

/**
Topics to Cover 
- What is an interface 
- Implicit & Explicit interface
- Feature of interface 
- Practical use of interface 
 */

//-- What is an interface ?
/**
  In there is no keyword called interface in dart and there is no special or dedicated way to create interface in the dart in fact a  class
  definition acts as the implicit interface ..
  -----------------
  What is interface in programming point of view..
  interface enforce a contact that class must fullfill using the implements keyword in simple words we can say interface use 
  specification  and class provides implementation that's the reason in order to use a class as the interface we have to use they keyword
  given by the dart and that called implements... 
  -----------------------------------------------
  
 */

//-------------------------------------------------------------------------------
//-- Practical example.. to understand interface..

/**
  
 */

/*
class A {
  int data = 10;

  void showData() {
    print('showData()  of a class');
  }

  void test() {
    print('test() of a class');
  }
}

/**
  When we write class B impliments A it's means i don't want to use this class A as the superClass for class B 
  in fact i want to use this class A as the interface right now we have seen that each and every class in dart whethers it's 
  abstract class or concrete class that class by default acts as the interface in the dart it means if we want to use a class 
  as a super class we have to use extend and whenever we want to use a class to work as the interface so instead of using extend 
  we simply have to go with the keyword called implements so it means class B will now impliment interface A so whenever we are saying 
  that class a is not a class means it's  a interface so what is happening here all the instance members of this interface now it has to be 
  overriden by class B means whichever class that implements interface it's a responsibility of that class it has to override all the 
  isntance members of the interface means now the class B has to just overriden this variable called data or it has 
  to provide the getter and setter for this data.. even it has to overwrite the show data and test method inside the class.. B 
  this is because when we write implements a or implements some  interface so instead of getting entire definition of method inside the class
  it will only get the method signature frankly speaking .. it will get the abstract method signature inside class B and that's the reason 
  this class B has to override all the instance members of interface ...
  ------------------------------------------------------------------------------------
  Whenever we use implements for the class means whenever we use implements so here the class that we implement doesn't act as a class 
  in fact it acs as the interface whethere it's a abstract class or it's a concrete class doesn't matter so whatever method it has means 
  whether it has abstract method or non-abstract method it's compulsory for implementing class to override it to redefine all the methods 
  present inside the interface that's why said that interface just provides the specification and class  has to provide implementation
  for all the specification given inside interface and we can observe here this implements is a nice and it's really a beautifull keyword 
  that gives the complete meaning of what interface is and as a technically means for the technical aspects we can say it is now miss class
  A is acting as a contract so B is saying that yes I will take  a contract with you and i'ts my challenge or it's challenge to me to override
  or just to redefine all the methods present inside you 
 */
class B implements A {
  @override
  int data = 10;

  @override
  void showData() {
    print('showData() of B class ');
  }

  @override
  void test() {
    print('test() of B class');
  }
}
*/

//-------------------------------------------------------------------------------
// Implicit & Explicit interface

/**
  now let's about what do mean by implicit and explicit interface in the dart 
  right now we've seen that each and every class in dart whether it's abstract class or conrete class will act as the by default 
  interface in that so we can observe here we have a class a that contains method test and do something so when we use class C 
  implements say it means for this class C .. A is not a super class in fact we want to use this a as the interface so this type of class'
  that contains the methods and all this thing will act as the implicit interface most of people ask can we create explicit interface in 
  dart should say practically it's not possible means we cannot have actual concept called explicit interface this question is mostly been 
  asked by the people who came from java c sharp background we know if we means if we have java experience in java it's possible to define 
  explicit interface means we can create the active interface which is actually a collection of constants and abstract methods so in dart
  we don't have exact same way means we don't have exact way for creating that interface because we can't create actually an interface 
  but we can mimic or we can create something like that by using the abstract class and that is also known as the explicit interface 
  in the dart but saying it's not the actually explicit interface it is a way that allows us to mimic or just to make a concept like that 
  we can observe here we have the abstract class B here then inside this class B we have methods text and do something we can observe here
  this class has got abstract methods they are not the concrete method if we put some constant here let's say static const data = 10; 
  now in this case .. we can say the class B or abstract class B is looking extactly similar to the interface that is available inside c sharp
  and java so it is just  a collection of constant snap  stack methods but make sure that there is no actual concept that allows us to create 
  the explicit interface ... 
 */

/*
// Implicit interface
class A {
  void test() {
    //
  }

  void doSomething() {
    //
  }
}

// Explicit interface
abstract class B {
  static const data = 10;
  void test();

  void doSomething();
}

class C implements A {}
*/

//-------------------------------------------------------------------------------
//-- Feature of Interface
//-- Different features of interface in the dart here....

// 1 Multiple interfaces can be implemented

/**
  We've a class A that contains Test methods then we've class B that contains method called demo 
  and we've class C here which is implementing the interface A and interface B it's possible and to implement multiple interfaces just 
  put the comma and just apply the name of another interface and so on we can implement multiple interface now we might have a big question 
  means how it's possible technically to inherit or to implement multiple interfaces and what about when we've the  same methods .. in the 
  class A and inside class B ... this doubt will resolve in next video...
  -----------------------------------
  For the class c it's also possible that class C can extend any other class and along with extending a class it can also implement interface 
  A and B 
 */

/*
class A {
    void test() {
        //
    }
}

class B {
    void demo() {
        //
    }
}

class C implements A, B {

}
*/

/******************************************* */
// 2 Implementing class must override the
// instance members of interface

/**
  We can observe here Class A that contains integer x and the method void test 
  and inside the class B we simply want to implement A means we want to use class A as interface and as a rule it's compulsory for the class B
  to override this member that is integer x or at least it has to provide getter and setter and it's compusory for the class B to have the 
  overritten method test inside it otherwise will have error in class B we can observe here we are getting error because we have not overwritten..
  variable x and the methods text inside the class B ..
 */

/*
class A {
    int x = 10;
    void test() {}
}

class B implements A {

}
*/

/******************************************* */
// 3 Static members of interface
// need not to be override

/**
  third points says static members of interface need not to be overwritten by class that implements interface we can observe here we 
  have a class A that contains a static variable having name count there is static method called show data inside class B we've used 
  implements A  it means we want to use this class A as the interface for B .. But we can observe here there is no error or there is no warning 
  for us .. because we just have used this implement but as this cound and show data they are static it's not compulsory for B means there is no
  need inside a class B to override that one this is because they are the static one and as we know that the static members are not the part of 
  state of an object means they are not the instance members  they are just the class members and they are a part of class they are not   
  actually a part of object ....
 */

/*
class A {
    static int count = 10;

    static void showData(){
        //
    }
}

class B implements A {
}
*/

/******************************************* */
// 4 Constructor has no role while implementing interface

/**
  if you've observed my sessions regarding the interface and the constructor in the interface there you might have observed one things 
  whenever we create the object of subClass before calling the constructor of subClass by default the default constructor of superclass 
  gets called and that is what the case in case of inheritance but whenever we use the interface this is not going to the happen 
  try to understand this example here .. We've a class A that contains two constructor the default one and this is the constructor having the 
  name called A dot.somename .. We've a class  B and that extends A .. intentionally we've placed extends otherwise we might say that why we using 
  extends here then we've default construtor  of class B having simple message here inside the main we have the object of B just created then 
  when we run this program we can observe here as we have extends before calling the constructor of B .. the constructor of A  that is 
  default constructor get called then the  default constructor B called.. 
  then we simply put here say colon we can write colon super and we can write super.someName that's fine .. when we rerun this program 
  we can observer here.. just before calling.. the constructor of B the constructor of a.someName get called .. then the constructor B is called..
  now this is the case when we using extends .. here..
  ---------------------------------------------------
  But instead of extends if we use implements  when we rerun this program just before calling the constructor of B nothing is getting called 
  simply the constructor of B is called.. we can observe here constructor of A is  never called here.. this is because A is not A super Class 
  A is just the interface now we've might question.. can we write say colon and super somehting .. yes we can write here.. but in this case 
  it's not a constructor of a it's actually the contructor of object class which is getting called.. so that's why we've written this application.
  but we can observe here it is just showing output B constructor called not A constructor of A called.. and if try to write let's say 
  super.someName immediately we will get error.. because no such a constructor is available it is showing error that the class object does not have 
  a constructor names us say some name lots of people ask question related to this.. which is error class.. object what is the means what is the 
  significance of class object  is here.. 
  why class object is coming in here so reason here is we know that whenever there is no super class for any class we can observe here for class B
  we don't have written extends something so whenever class don't have extends some other class object class will act as by default superclass
  for that one and that is the reason dart is trying to find the constructor called someName  inside the class called objects and that's the reason 
  this object class  is coming in a picture for this error ...
 */

/*
class A {
    A() {
        print('A() called');
    }

    A.someName() {
        print('A.someName() called');
    }
}

// class B extends A {
class B implements A {
    B() {
    // B():super.someName() {
        print('B() called');
    }
}

void main() {
    B obj = B();
}
*/

/******************************************* */
// 5 Class must override setters & getters
// of the interface

/*
class A {
    int _x = 10;

    int get x => _x;

    set x(value) => _x = value;

    void test() {}
}

class B implements A {
}
*/

/******************************************* */
// 5 Class must override setters & getters
// of the interface

/**
  means When interface class contains getter and setter it's compulsory for  implementing  class to just override the 
  getter and settter means even if we just override particular variable it's doesn't metter stricktly have to follow the  rules
  and regulation.. given by the dart..  you've to just override the getters and setters.. 
 */

/*
class A {
  int _x = 10;

  int get x => _x;

  set x(value) => _x = value;

  void test() {}
}

class B implements A {
  int _x = 10;

  void test() {}
}
*/

/******************************************* */
// 6 Members of interface can't be accessed
// using super in the class

/**
  We can observe here we've class A that contains method called void test then we've class B which implmenting 
  the class A it means we want to use this class A as interface and simply we just overwritten the methods test as a rule   we have 
  to do this inside class B then we simply called the method test just over the object of B ..
  now if we use extends here .. if we try to write let's say super.test(); here .. so what do mean by super dot test here we just want to 
  call the methods test which is coming from the super class but we can observe here as we have written here implements means we want to 
  use this as class A as interface so we're not allowed to write super dot test means using super keyword we cannot access members of 
  interface inside the implementing class but if we change this implements from extends let's say write here extends then it's fine here 
  we can observe error has resolved here and dart is allowing to just use super dot test 
  Whenever we've super class means when we use extend here it's possible to access members of super class inside the subclass using super 
  but if we have implements .. whenever we've implements so it's not allowed us to access the members of interface inside the implementing 
  class   using the super keyword 
 */


/*
class A {
  void test() {
    print('test() of A class');
  }
}

class B implements A {
  @override
  void test() {
    print('test() of B class');
  }
}

void main() {
  B obj = B();
  obj.test();
}
*/


/******************************************* */
//-- 7) Both concrete & abstract class can be used as the interface ..

/**
  Yes it's possible we can use the normal that is the concrete class as interface and we can also use abstract class to create 
  an interface moreover if we want to have a feeling like creating the explicit interface that we might have seen in c sharp and java 
  so we can use abstract class for that purpose we can simply put constant whatever we want and we can just go on putting abstract methods 
  that's completely fine.. 
 */





/******************************************* */
// Abstract class has no restrictions on overriding members of interface

/**
  We can observe here we've class A that contains methods void test and inside this class B we've   written implement say it means 
  A is acting as interface and as B is a concrete class we're having error because we just have to implement all the method that is 
  we just have to override the method test inside the class B .. But if we change this class B from the concrete class to abstract so 
  let me write here keyword for abstract as soon as we place the keyword abstract we can observe here error has removed from our code.. 
  this is just because we have seen that whenever we write implement A instead of getting complete definition of the class A ..
  we will get only the abstract signature of method and that's what place inside the class B and as class B is itself the abstract class
  so there is no problem of having the abstract signature of method inside the abstract class but when we've concrete class it's not 
  allowed to have abstract signature of method inside a concrete class it has to be present in only inside abstract class but not inside 
  the concrete class 
 */

/*
class A {
    void test() {
        print('test() of A class');
    }
}

abstract class B implements A {

}
*/


/******************************************* */
// 9 Interface itself can extend a class
// or implement another interface

/**
  We've class A that contains a concrete method called show data then we've class B which is extending a class A we can 
  observe here for class C we have used implements B means for this class C    B is the interface and this interface B is 
  extending a class A so it's means this interface can extend the class moreover it's possible that we can use say class B 
  implements A  and obviously inside this class B it's compulrsory that there must be a method so it's also possible that the 
  B can implement another interface or B can extends the class and we can simply implement the interface that can extend  another
  class or it can implement the interfaces ...
 */

/*
class A{
    void showData(){}
}

// class B extends A{}

class B implements A{}

class C implements B{
    void showData(){}
}
*/




/******************************************* */
//--- Practical use of interface

//-- https://youtu.be/Avnb6tVKviE?list=PLeKQz1VjpjFqqXLvQ8rTnYxZcUqEGA0dm&t=1197