//---  Mixins in Dart | Dart mixins ------------

/**
  ##  -- Topics to learn 
  - What is Mixin ?
  - How to create the mixin?
  - How to use the mixin?
  - Practial use of Mixin
  - Feature of Mixin
  - Limiting the use of mixin
  - mixin with on
 */

/**  ----- What is Mixin ----
    - Mixins in Dart are a way of using the code of a class again in multiple class hierarchies 
    (Synthetically mixing are very much similar to class there are lots of similarities between mixing and class however 
    there are lots of differences so what it is we discuss in this same session so as we can say mixing is a type of class
    that is similar to class we can say mixing is a class whose methods and properties can be used by other classes without
    subclassing when we've a regular class whether it's abstract class or concrete class to use it's properties it has to be 
    extended in a subclass but when we have mixing without extending a mixing it's possible that we can use it's properties 
    or methods inside a class or whatever we want now.. )
    - A mixin is a class whose methods & properties can be used by other classes without sub-classing .. 
    - It's a reuseable chunk that can be plugged in to any class that needs this functionality 
   */

/**  ----- How to create mixing in dart ----
      (Dart allows us to create mixin in two different ways first is by using regular class so whatever class we have
      whether it's abstract class or concrete class that can be used as a mixin in d dart and that's really a
      surprising things but there are two strong restrictions to follow first one is there should not be any 
      Constructor in a class and second the class should not extend any other class other than object we know that 
      by default class extends object class and that's fine but other than object if our class extending some other class
      so it's not allowed but if our class is following these two different restrictions then our class is good to go work
      as a mixin so how class be user mixing let's understand this one with an example.. )

       // 1) Using mixing

            class ClassName{
              //
            }

            // - No constructor 
            // - Not extending class other than object class

      */

// There here is example....

// Using the class as mixin

/**
    We have a class ABC that contains a method called word test and   there is some message inside a test 
    so we can observe here it's a class that don't have a constructor and as there is no extending of any 
    other class so by default is extending object class as usual we can observe here we have class Demo 
    and for using this class ABC inside demo ... we haven't used extend here infact we use the keyword 
    call with so what is this width and what is the use of this one..
    so when we use this with ABC it's means we want to use this class Abc as the mixing for this demo 
    and not as the class Abc itlself so that's the reason Abc will act as mixing for this class demo 
    so the method test of this mixing Abc will now come inside the demo so we can observe here in the 
    main we have the object of demo here and from that object We're just calling the method test ..
    When we run this program and we will observe here by using this obj dot test is by using the object 
    of of this demo it is printing the message test() from Abc  class as mixin 
   */

/*
      class Abc{
        void test(){
          print('test() from Abc class as mixin');
        }
      } 

      class Demo with Abc{
        //
      }

      void main(){
        var obj = Demo();
        obj.test();
      }
*/

//-------------------------------------------------------------------------------------------------------
//-- Another way of creating mixing
/*
  Now the another way of creating mixing which is basically a pure way of creating mixin and 
  that is using the mixing keyword.. Dart is given the keyword called mixin and that allows us 
  to create a mixin explicitly in a program for that we simply have to use called the keyword
  called mixin then then we've to define the name of mixin there after we have to place 
  opening and closing curly bracket and entire definition of  mixin is placed within the pair of 
  brackets now we can observe here these complete syntax looks likes the syntax of the class 
  now the things is what we can place inside the this mixin and what we cannot we'll discuss 
  all these things in the topic called properties of mixing 

    // 2) Using mixin keyword explicitly 

          mixin MixinName{
            //
          }
*/

//-------------------------------------------------------------------------------------------------------
//--  How to use the mixin  ?

/**
  - Dart has given keyword called  with to use the mixin inside the class 
  (remember we've extend keyword to extend a class inside a subclass we have the keyword called implements to use 
  interface inside a class and in the same way dart is given a special keyword called with whenever we want to use
  a mixin inside class so whether we've mixin made using the explicit mixin keyword or whether we have a class as 
  a mixin intself for using both these Dart has the keyword called with here so we have to simply a class whatever 
  we have and the class wants that wants to use mixin simply we have to use the keyword with and there after we have
  place the name of mixin here .. then the definition of class goes after this opening and closing curly bracket 
  means inside these brackets so whatever things this mixin will have all these things will now come inside the properties 
  of this class itself when good news with mixin is it's possible for a class to use multiple mixin inside it for this 
  we have to use a class keyword thenjust Define our class then then we would use a with keyowrd and after this keyword 
  we have to write the name of mixin that we want to use inside a class for exmaple we can write mixin one comma mixin two comma
  mixin there dot dot dot and the mixin and now the properties of all these mixing will now come inside the specific class 
  now we might be wondering it is looking similar to interface so we might have question .. whether mixin is similar to interface 
  we will say no when we implement multiple interfaces in a class basically we are not getting complete definition of method 
  .. From interface we'll get only the abstract method signature but good news with mixin is whenever we use multiple mixin inside
  a class from all those mixin the complete method definition from the mixin will come inside the class that's really a surprising 
  and interesting things now this will create a big question in mind what if multiple mixin will have  the same name method 
  so will dart gives error or how dart handle the things so to understand all these things )

     mixin MixinName{
            //
          }

    class ClassName with MixinName{
        //
      }

      class ClassName with Mixin1, Mixin2, ..MixinN{
        //
      }

 */

//-------------------------------------------------------------------------------------------------------
//-- Practical use of Mixin....

/**
  - Consider we want to create a system that represents or manages a car basically we are talking   single car that 
  comes in three different variants and to represents these three different variants we have total three classes here
  the class called petrol car is managing the petrol variant of the car that has a method called feature that representst
  the features of this car then it has two methods say petorlEngine and needsPetrol and there are some other methods 
  which only a petrol car can have we have class called electric car which is actually representing the electric variant 
  of this same car it has again method called features and there two methods that represents the electricMotor and 
  needsBattery again it can have its own feature that only the electric car can have .. we have class called HybridCar
  that represents a hybrid kind of car for those who don't know what is this hybrid car it is a kind of car that has both 
  the petrol engine and electric motor that works on battery so that based on the requirement we can use petrol engine or 
  the electric motor to run on the battery this car basically has has method called feature that's again represents the of 
  this hybrid car then it has the petrolEngine and needsPetrol that will make it as the petrol car and we have method called
  electricMotor and needsBattery that will make it as the just the electric car so using this whole method this is actually 
  working as the hybrid car now we can observe here the method called feature is repeated in these three different classes 
  and which not actually a good program practice .. now what we can suggest we can suggest us or the op will suggest us 
  that we have to create a special class inside that class we have to define a method all feature and this class has to be 
  be extended in all these three classes and let us do the same things so for this ------ 
 */

/*--- this is not a right way.. to do ---- 
class PetrolCar{
    void features(){}
    void pertolEngine(){}
    void needsPetrol(){}
    //..
}

class ElectricCar{
    void features(){}
    void electricMotor(){}
    void needsBattery(){}
    //..
}

class HybridCar{
    void features(){}
    void pertolEngine(){}
    void needsPetrol(){}
    void electricMotor(){}
    void needsBattery(){}
    //..
}
=====================================*/

/**
  ---so for this we create a abstract class called Car that we put the method of features inside abstract car class
  after that we extended Car class in all the three classes which we can access from there Car class ..
  but we noticing something that petrolEngine and needsPetrol method are also inside  the HybridCar class so what 
  is happening here these two methods are are repeated in the petrol car inside the hybrid car so what we can do we 
  can simply cut this method and we can paste it inside the car now will happen here as we are pasting inside the car
  that's fine so our petrolCar has got this method and our hybridCar will also get this method that fine but unnecessarily
  our ElectricCar is getting the method petrolEngine and needsPetrol and that's completely wrong so that should not happen 
  so let us just undo and go back to my previous code that's fine now ..
  now what is the next we can suggest us that when we have to create a class  let's use some class like sample test that 
  we use regularly in our code and why don't we paste this method here and when we have to use this class paste inside a 
  petrolCar and inside HybridCar but observable thing here is the class called petrolCar already has extended the class 
  called Car and as the rule of oop or with the Dart we cannot extend multiple classes inside the class so that's why if 
  we are extending Car class we don't have a chance to extend some other class so we don't have this  chance to extend it
  means for writing a class and to just add the method there so we don't have that chance now we can suggest me why not 
  to go with interface okay we should create some interface and and we have to place that method here and we can implement 
  this interface inside the petrol Car and use the same interface inside the HybridCar and our problem is solved we will say 
  no it's not going to solve our problem because when we use interface what will happen if we define the methods here and if
  we use interface so for this petrolCar and HybridCar We are not getting the method definition rather we are just getting 
  the force or have just bind it to just override the methods here and we need to define the methods explicitly inside 
  petrolCar and inside the HybridCar means we are not reusing the methods okay we have just to implement different methods in 
  just different classes and that's not other things that we want to do here we can observe here neither class nor the interface 
  is useful to solve situation and guys believe this is the best place where we can use x mixin so how we can use that one 
  .. What we will do here .. we will define a mixin let's say we have to write here mixin then we will name this makes sense a 
  petrolVriant .. now inside this mixin called PetrolVarient what we will do .. we need to just cut and paste this method from here
  and we have to paste this method here inside PetrolVarient method here and that's fine .. now what we will do here by using the 
  methods PetrolEngine and needsPetrol we will use here extends are and we will write here with say PetrolVarient and that's fine 
  now what is happening here  from this car class We are getting the method called features and with PetrolVarient .. We are getting
  two methods inside the class called PetrolCar now same thing has to be done with the HybridCar ...
  now again we have a same problem with the these two methods electricMotor and needsBattery so to solve this again we can use 
  another mixin so let us Define mixin here .. so we write down mixin then let's name this ElectricVarient and inside this 
  ElectricVarient mixin let us cut these two methods from here and let's paste it here  that's fine let me just format a little bit
  and here we can write with say ElectricVarient in there ElectricCar class.. now can observe here by using this extends Car we are 
  getting the method called features here and with ElecticVarient we are getting the method electricMotor and needsBattery and that's 
  fine inside the ElectricCar now these two methods are again required inside the HybridCar class now how we can do that one so as we 
  know that it's possible for one class to use multiple mixin so we will make the advantage of this thing let us add a comma here 
  and let us just copy and paste the name of this mixin called ElectricVarient a code is here completed .. 
  Let us just create a object of car inside the main so what we're doing here simply we will write here let's var car let's go with 
  the PetrolCar .. and we can observe here as we have a PetrolCar and when we use let's say car dot something we will observe here
  we are getting method called feature that is coming from that Car class then we have needsPetrol and PetrolEngine both these 
  methods are coming from the mixin called petrolVarient and on other hand if we change it to say ElectricCar .. now we can observe here
  car object dot we can use the method called features which is again coming from the car class then we have the electricMotor and it's 
  battery which are coming from the mixin called ElectricVarient finally when we use HybridCar here now will observe here with 
  this car object we can use the method called features that is coming from the car class again then we have the method called PetrolEngine
  and  needsPetrol these are coming from the mixin called PetrolVarient and the methods called ElectricMotor and the it's battery they 
  are coming from the mixin called ElectricVarient ... 
  .. 
 */

/*
abstract class Car {
  void features() {}
  // void pertolEngine(){}
  // void needsPetrol(){}
}

// class test{
//   void pertolEngine(){}
//   void needsPetrol(){}
// }

mixin PetrolVarient {
  void pertolEngine() {}
  void needsPetrol() {}
}

mixin ElectricVarient {
  void electricMotor() {}
  void needsBattery() {}
}

class PetrolCar extends Car with PetrolVarient {
  // void pertolEngine(){}
  // void needsPetrol(){}
  //..
}

class ElectricCar extends Car with ElectricVarient {
  // void electricMotor(){}
  // void needsBattery(){}
  //..
}

class HybridCar extends Car with PetrolVarient, ElectricVarient {
  void pertolEngine() {}
  void needsPetrol() {}
  void electricMotor() {}
  void needsBattery() {}
  //..
}

void main() {
  var car = PetrolCar();
  car.features();
}
*/





//-------------------------------------------------------------------------------------------------------
//-- Different Features of Mixin...

/*-- What is allowed for the mixin ----

  - Variables (Instance & static)
    (We can create both the instance variable and static variable inside the mixin for using the instance variable we must have to 
    use a class means there has to be class that uses the mixin and by using the object of that class the instance variable can be
    used we might have a question why this has to be done this is simply because we cannot create object of mixin that's why we 
    cannot use or access the instance variables of mixin directly so it has to be accessed by tha class that uses a mixin now the 
    static members or static variables of mixin can be simply used by using the mixin name dot variable name in the same way we use 
    static variables of class mixin can have the concrete methods abstract method and the static method so static method can be simply 
    used by using the mixin name dot the method name that's fine )

  - Methods (concrete, abstract & static )
  (when mixin has abstract methods and the class that uses the mixin so it's a responsibility of that class to implement or to override
  all the methods present in the mixin means all the abstract methods present in the mixin and the concrete methods has to be used by the
  object of the class that uses mixin )

  - Constants (Using const & final keyword)
    (Mixin can have a constant which can be made both by using the const keyword as well as the final .. mixin can implement another
    interface and that's completely fine but however mixin cannot extend a class .. mixin can implement interface so whenever it is 
    implementing interface so it is reponsibility of mixin to implement all the methods present in that interface )

  - Mixin can use super keyword to access member of object class only .. 
    (mixin can use the super keyword but however as mixin cannot extend other class than the of class so we are just limited means we
    are limited to use only the members of object class by means of the super keyword .. we might have question can we access members 
    of interface inside the mixin using super keyword .. it's not possible .. only the members of the class can be used by using the 
    super keyword )

  - A class can access members of mixin through super keyword .. 
    (A class that uses mixin for that class it's possible to use all the members of mixin by using the super keyword this keyword is 
    allowed inside the mixin means whatever methods we have inside mixin ..   except these static methods it's possible to use this keyword)

  - Mixins can be implemented by a class..
    (Then mixin can be implemented by a class so as we have seen we can use mixin with keyword so wheneve we use with keyword for using mixing
    means we want to use all the properties and methods of mixin inside a class but it's possible that we can use mixin as an interface so for
    using mixin as the interface instead of using with keyword we would use implements keyword in this case our mixins will use or it will act 
    as interface for the class)

  - More than one mixins can used inside the class..
    (More than one mixins can used inside the class and we already seen that one inside the practical use of mixin )
*/



/**----- What is not allowed for the mixin --------
  - Defining a constructor 
    (We cannot define any explicit Constructor inside the mixin )

  - Instantiation { We can't create object of the mixin }
    (mixin can't be instantiated means we cannot create a object of mixin)

  - Extending a class other than object class 
    (mixin cannot extend any class other than object by default object class gets extended inside the mixin but we are not allowed
    to write explicitly extending any class inside mixin )

  - Mixins can't be extended 
    (mixins can't be extended however it can be implemented or we can use with keyword for using the mixin but not the extend keyword)

  -  Can't be used for the irrelevant class when use of mixin is limited..
    (We cannot use mixin in the irrelevant class when use of mixin is limited means when we limit the use of mixin or specific class
    so for that class means for that specific classes or it's subclasses the mixin can be used but for other than that classes we 
    cannot use the mixin )
  
  - Can't be used in the same class specified using the on keyword 
    (then the class on which means whenever we use on keyword for that specific class so for that specific class we cannot use a mixing
    other than that class means for their subclasses we can use a mixin but not for that specific class used on the on keyword so what 
    these two pionts are we'll just discuss all these two points practically in the next topics.. )
  
 */


//-------------------------------------------------------------------------------------------------------
//-- Limiting the use of mixin 


/**
  This topics  is about how we can limit the use of mixin for the specific classes we have a mixin called Speak that contains
  methods called speaking we can oberve here this mixin Speak is used inside a class called Human and inside the Men , inside
  a Dog , inside a Cat as well so this mixins don't have any restrictions means we can use Speak mixin on any class but consider
  we just want to just restrict this Speak methods on the class called Human means whatever subclass of humans are there only those
  subclasses can use this mixin so what we can do simply we have to use keyword called on so Dart has given a keyword called on we 
  use here let's on and we will write here so whenever we use say Speak on Human it means the use of mixin is limited for only the
  classes which are the subclasses of this human class now what we can observe here so first of all we have to just delete here let's say 
  with  speaking and here we write let's say class Men let's say extends Human .. now we can observe here this Men class is extending 
  a Human class that's the reason it's  now a subclass of Human so whatever Human subclasses are there for those subclasses it's possible
  to use Peak becaues we have just restricted the use of this big mixin for only Human subclasses that's why it's allowed and we can observe 
  here our the Dog and Cat these two classes will have the error because the use of this mixin is restricted here now we think it's very much
  clear for us what do mean by mixin cannot be used by irrelevant classes when use of mixin is limited we can observe here for this mixin 
  called Speak Human means the the Men is a irrelevant class but Dog and Cat these are the irrelevant classes that's why it cannot be used 
  and let talk about  very interesting point here  let's if we use say class Human with Speak now we can observe here We getting error this is 
  because when we have class specified on with the mixin for that specific class we cannot use a mixin so its has to be used by it's subclasses 
  not by the extactly same class specified using the on keyword ...
 */


/*
mixin Speak on Human{
  void speaking(){}
}

class Human with Speak{
}

class Men extends Human with Speak {
}

class Dog with Speak{
}

class Cat with Speak{
}
*/