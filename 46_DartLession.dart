//-- Solving all doubts for Mixins in Dart | Dart mixin questions and answers

//-- 01 ) How it is possible  to use multiple mixins in one class?

/***
  When we think about extend we are not allowed to extend multiple classes in one class that's why we can see when we use
  zoo extend which class and off class dart pad is giving us error .. the reason why it's not possible to inherit multiple
  classes in on class class consider the class Fish and Dog has got this similar method for example we have method callled 
  void eat in a fish class and the same method void eat is also present in the class called Dog now consider for sometime 
  Dart is given us a permission to extend multpiple classes then inside the zoo class there will be two different copies of 
  eat method coming from the fish class and the Dog class respectively and when we create object of zoo and over that object 
  if we call the eat method then which eat method to call either coming from the fish class or coming from the Dog class that
  call cannot be resolved and that is the reason Dart or most of the programming languages don't allows us to extend multiple
  classes in one class ..
 
 */

/*----------------------------
class Fish{
    void eat(){
        //
    }
}

class Dog{
    void eat(){
        //
    }
}

class Zoo extends Fish, Dog{
    //
}
-------------------------------*/

/***
    now what is the magic with mixin that allows us to use multiple mixin inside one class .. let us understand how it is 
    possible using the same example code ..
    Now here we've two mixin here called Fish and the Dog containing similar method void eat and void eat having some code 
    inside it with the class Zoo it's possible to use multiple mixin and we've used here with fish and the Dog so in order
    to use mixin we have to use keyword called with and not a keyword called extend so it's possible for us to use multiple
    mixin inside one class and iside the main we have the object of Zoo and all that object we have called method eat now 
    it's a big question which eat method will get called here this is because from this fish mixin and the Dog mixin obviously 
    as they have similar method so different copies of it will come inside a Zoo class and which one get called now it's not a 
    questions here it's a straightforward answer when we run this program we will observe the eat method of Dog mixin will call 
    here that's why we're getting output dog is eating now let's understand the reason here .. we know whn we use fish so fish is
    the first mixin that we have used so that's why the eat method of this fish mixin will get insid this class and as we're using
    the another mixin that is last mixin in this case that is a Dog and as it has same method called it so the eat method of Dog will
    replace the eat method of this fish that's why the older method of the fish that is the older method eat of the fish mixin will 
    get replaced by the new method eat of the dog and that's the reason there are no two copies of method there will be single copy
    of the eat method coming from the dog and that's the reason when we run this we are getting dog is eating so make sure that in 
    case of mixin whenever a  mixin contains similar method we have to imagine it like a stack and which are mixin which is the last 
    mixin so for that mixin the method will come at the top of stack and that method will get called each and every time when you call 
    that method know consider if we chagne the sequence let's say if we delete Dog from here and if we make the Dog as a first mixin 
    and fish is now a last mixin in this case so it doesn't matter how any mixin you're using two or three or four doesn't matter so 
    whatever mixin which is the last one that mixin method will used obviously there has to be same name method if we have difference 
    name methods then there is no the problem here so when we rerun this program .. we will observe here as fish is the last mixin here
    we will get output from the eat method of the fish mixin and it is saying fish is eating ..
 */


/*
mixin Fish{
  void eat(){
    print('fish is eating..');
  }
}

mixin Dog{
  void eat(){
    print('dog is eating..');
  }
}

class Zoo with Fish, Dog{
    //
}

void main(){
  var zoo = Zoo();
  zoo.eat();
}
*/

//----------------------------------------------------------------------------------------------
//-- 2) Can we write constructors inside the mixin..?

/**
    Can we write constructors inside the mixin -> the straightforward answer is no we are not allowed to write Constructor
    inside mixin we know that there two ways to create mixin in an Dart so when we create mixin using the keyword explicitly 
    we can observe here in line no. two we have a constructor and Dart pad  is giiving  us an error it's a mixin cannot 
    declare constructor and the second way is by using a class as a mixin so we can observe here in line no. 103 we have a 
    constructor inside this class called Talk and as this class Talk has got a Constructor we cannot use this class as the 
    mixin and that's the reason in line no. 107 we are getting error it says the class talk can't be used as mixin because it 
    declares a Constructor 
 */


/*
mixin Speak{
    Speak(){
        //
    }
}

class Talk{
    Talk(){}
}

class Man with Talk{
}
*/

//----------------------------------------------------------------------------------------------
//-- 3) Can a mixin extends a class or implemetns an interface ?

/**
    Whether we are creating a mixin explicitly using mixin keyword or we are using a class as a mixin we are not allowed to
    extend any other class inside mixin other than object we can observe here we have a mixin called Dog and inside that we 
    use say extends animals so Dart pad is giving us an error because it's now allowed to use extend kyword with the mixin 
    so we try to use let's say extend object so even it's not possible because whenever we create a mixin explicitly we 
    are not allowed to use extend keyword using the mixin however we can change these extend to implements now that's going to 
    work fine here and instead of object we can change it to say animals let's write here Animal and that's completely fine so 
    make sure that mixin cannot extend a class but it can implement an interface and now it's a surprising thing we might be 
    observing here inside the mixin we are not getting error or there is no warning or there is no restriction for this mixin 
    called Dog to implemens this eat method because when we use implements animal it means we don't use this class animals as 
    the interface and whenever we use interface we are going to implement or override methods of interface and why dart pad is 
    not giving  error to override this method this is because iniside the mixin we are allowed to write abstract method and that's 
    the reason when we writing implements animals the abstract signature of this void eat is coming inside the Dog mixin and has mixin 
    about the abstract method the abstract signature can be there inside the Dog mixin and has mixin about the abstract method 
    the abstract signature can be there inside the Dog mixin but whichever class that uses ths Dog mixin has to implement that method
    for example let's say if we use class say ABC and if we write here with Dog then for this class ABC now it's compulsory to implement
    the method called eat  
 */


/*
class Animal{
  void eat(){
    print('Animal is eating...');
  }
}

// mixin Dog extends Animal{
// mixin Dog extends Object{
mixin Dog implements Animal{
    //
}

class Abc with Dog{
    //
}
*/


//----------------------------------------------------------------------------------------------
//-- 4) Can one mixin extends or implements another mixin..?

/**
    mixing cannot extend another mixing we can observe here as we are writing mixin manager extends the mixin called
    Employee and that's not going to work here however a mixin can implement the mixin so we can write here implements 
    and that's going to work here but make sure that whenever we use implements means instead of getting the complete method 
    of work inside is manager it is just getting the abstract method signature and whichever class that uses mixin called 
    Manager that class has to override or implement all the methods present inside this interface or the mixin called employee
    
 */

/*----------------------------------
mixin Employee{
    void works(){
        //
    }
}

// mixin Manager extends Employee{
mixin Manager implements Employee{
    //
}
-------------------------------------*/

//----------------------------------------------------------------------------------------------
//-- 5 ) Can we create objects of mixin ?

/**
    The straightforward answer is no we cannot create object of mixin and we might think a mixin like abstract class
    and as we can't create the object of abstract   class and similar to that reason we can say we cannot instantiate or
    we cannot create the object of mixin 
 */

/*-----------------------------
mixin Animal{
  //
}

void main(){
  Animal obj = Animal();
}
-----------------------------*/


//----------------------------------------------------------------------------------------------
//-- 6) Can we access members of mixins in class using super keyword ?

/**
    Can we access members of mixins in class using super keyword -> the answer is Yes it's possible to access all the 
    members of mixin using a super inside a class that uses a mixin we can observe here we have a mixin called Animal 
    that contains a field called numberOfLegs are there is a method called eat and Dog class is using a mixin with Animal 
    and inside a method showData we can observe here we simply printing the super dot numberOfLegs and we simply called 
    super dot eat  and inside the main we use Dog dot showData so whenever we run this program through the method 
    showData the super dot numberOfLegs and super dot eat will get call and will observe here we will get output 4 that is 
    numbeOfLegs and animals is eating 
 */

/*------------------------------
mixin Animal{
  int numberOfLegs = 4;

  void eat(){
    print('Animal is eating...');
  }
}

class Dog with Animal{
  void showData(){
    print(super.numberOfLegs);
    super.eat();
  }
}

void main(){
  var dog = Dog();
  dog.showData();
}
---------------------------------*/

//----------------------------------------------------------------------------------------------
//-- 7)   Can we write abstract methods inside the mixin ?

/**
  Yes inside the mixin we can add the abstract method as well as the concrete method we can observe here 
  a mixin called Speak has got abstract method but make sure that class that uses this king of mixin having
  the abstract method it's a responsibility of that class to override that specific abstract method otherwise
  we will get error from the dart Analytics...
 */


/*
mixin Speak{
    void speaking();
}

class Man with Speak{
  //--
}
*/


//----------------------------------------------------------------------------------------------
//-- 8) Can we override the methods of mixin?

/**
    Can we override the methods of mixin -> Yes of course we can override the methods of mixin and it's really a personal 
    choice if mixin contains the concrete methods but when mixin contains the abstract method then it's compulsory for
    a class override method we can observe here a mixin called Human contains two method think and speaking so think is a
    concrete one and speaking is the abstract one the class man is using mixin called human and we can observe here inside
    the class we have already done the think method as well as we already done the method called speaking 
 */

/*
mixin Human{
  void think(){
    print('Human can think');
  }

  void speaking();
}

class Man with Human{
  @override
  void think(){
    print('Man can think');
  }

  @override
  void speaking(){
    print('Man can speak');
  }
}
*/


//----------------------------------------------------------------------------------------------
//-- 9) Can we use mixin as parameter in methods ?

/**
  Can we use mixin as parameter in methods -> one thing is very clear we cannot create object of mixin and that's the reason
  we cannot directly pass the object of mixin as a parameter to Method however a method can have the mixin type as a parameter 
  means method can declare the refrence of mixin as a parameter now the question is which object has to be passed to the specific 
  method we can observe here we've mixin called person and there's a class called employee which is using this person mixin 
  so that's why we can imagine it's like a super class and subclass relationship and inside this class test we have method called 
  doSomething which requires the object of person that is here we have reference of person mixin inside these state obviously we 
  cannot create object of person but we can create the object of employee and that object we have passed inside the method called
  doSomething so we can imagine it like a super class refrence is referring to subclass object 
 */


/*
mixin Person{
  //
}

class Employee with Person{
  //
}

class Test{
  void doSomething(Person obj){
    print(obj);
  }
}

void main(){
  Test test = Test();
  var employee = Employee();

  test.doSomething(employee);
}
*/

//----------------------------------------------------------------------------------------------
//-- 10) Can we restrict the use of mixin for specific class(s) ?

/**
  Can we restrict the use of mixin for specific class(s) -> Definitely we can restrict the use of mixin and for that purpose 
  Dart has given keyword called on we have written here mixin Speak on Human it means this Speak mixin can be used only on 
  those class that extends the Human class directly or indirectly so we have a class called Human and we have a class 
  called animal these are two different or two individual classes we have a class called Man which is extending Human 
  and as it is extending human it's possible to for us to use Speak inside this Human and as this Dog class is extending Animal
  and as there is no connection with the Human so we cannot use Speak mixin in this specific class called Dog and we we have a 
  class called WiseMan so as WiseMan is again individual class and it has no connection with the human we cannot use Speak mixin 
  on this but let's say if WiseMan extends Man let's if we write here extends the Man class and as Man is a subclass of Human that's
  why we're allowed to use Speak mixin inside this WiseMan class so make sure that the classes that extends human directly or 
  indirectly can use this mixin to Speak 

 */


/*
mixin Speak on Human{
  //
}

class Human{}

class Animal{}

class Man extends Human with Speak{
  //
}

class Dog extends Animal with Speak{
  //
}

class WiseMan extends Man with Speak{
  //
}
*/


//----------------------------------------------------------------------------------------------
//-- 11)  Can we use class as mixin in Dart ?

/**
  Can we use class as mixin in Dart -> Definitely Dart allows us to use the concrete class or the abstract class to 
  work as a mixin for any class provded that the class should not explain any other class other than object and there 
  should not be a constructor inside a class  
 */


/*
class Code{
    void coding(){
        print('coding...');
    }
}

abstract class Debug{
    void debugging();
}

class Developer with Code, Debug{
    @override
    void debugging(){
        print('debugging the code...');
    }
}
*/

//----------------------------------------------------------------------------------------------
//-- 12) Can we place static members in mixin ?

/**
  Can we place static members in mixin and if it is possible how to use those static members the answer for first question is
  definitely we can play static members inside the mixin we can observe here mixin called MyMath has got static variable
  and we have a static method inside it so that's completely fine now the second thing how to use those static members ..
  we have to use static members of mixin in the same way we use the static members of class simply by using mixin name 
  dot member name as we have used here MyMath dot pi or MyMath dot cube of two and when we run this program will observe here
  we are getting the value of pi which is the value of constant in my mixin and it is the value of Cube of 2 .. 


 */


/*
mixin MyMath{
  static const double pi = 3.1415;

  static int cube(int no){
    return no*no*no;
  }
}

void main(){
  print(MyMath.pi);
  print(MyMath.cube(2));

  /**--- Print Output ---
    3.1415
    8
   -------------------------*/
}
*/


//----------------------------------------------------------------------------------------------
//-- 13) What if a class uses a mixin containing abstract method ?

/**
   What if a class uses a mixin containing abstract method -> a mixin can have abstract method and that's completely
    fine and whichever class that uses a mixin that contains abstract method it is a resposibility of that class to 
    override or implement all abstract method present in the mixin in this case or scenario we can consider mixin like
    the abstract class or has the interface that contains the abstract method 
 */


/*
mixin Sleep{
  void sleeping();
}

class Developer with Sleep{
  // 
}
*/



//----------------------------------------------------------------------------------------------
//-- 14)  Out of class, interface & mixin which one is the best ?

/**
   Out of class, interface & mixin which one is the best ? -> it's not really a technical question that has to be answered 
   by writing a code rather it's a logical question for object point of view the class interface and mixin all have their 
   specific use and they have that specific role in the program .. But when it comes to talk about an object means we need 
   an object then definitely we have only one choice that is a class because we cannot create object of interface or mixin
   so we have to go with class only .. now consider place where we have some set of abstract methods or we have some set of 
   methods that we want some class to be forced and that class has to implement those method so we can make interface and we
   can place those methods inside that so interface can help you to handle these situation.. and the place where we have some 
   piece of code and that has to be used in multiple class hierarchy we can simply use a mixin a lot of time people get confused
   in between class and mixin and they try to compare the class with the mixin but make sure that the class and mixin they are not 
   really a thing to be compare means it doesn't make sense to compare them because black is a different purpose and mixin has a 
   different purpose because there are two strong limitations of mixin if we compare that on with the class we cannot create object 
   of mixin and we cannot write constructor inside mixin so we cannot say mixin is a replacement of class or mixin is something 
   that is made for multiple inheritance and all these things so it is not the case at all question no. 15 is to consider a 
   situation where class is using multiple mixins and those multiple mixin have similar method but having different method signature
   to understand that one let's look at the code.. -----------
   ---We have two different mixin here called Paper and Canvas both contains a method called paint but the difference is in 
   mixin Paper we have a method paint without any argument or parameter where as in mixin Canvas the pain method tooks two 
   parameter width and height and inside this class called Painter we are trying to to use the two different mixins Paper and
   Canvas and we can observe here we are getting errors now simple reason for error here is what is happening both this method
   paint from the mixin called Paper and Canvas is getting inherited inside the class called Paint and as this method will have 
   different signature that's the reason there are two paint method one is without any parameter and another one is having two 
  parameters coming from the Canvas and as we know that in case of Dart it's not possible to have method overriding so we 
  actually what is happening here with thise two different mixin we are getting two different methods so it is making like the 
  method overriding means having the same name method with different signature and that's not allowed in the Dart 
 */

/*
mixin Paper{
    void paint(){
        print('paint something on Paper');
    }
}

mixin Canvas{
    void paint(var width, var height){
        print('paint something on Canvas');
    }
}

class Painter with Paper, Canvas{
}
*/


//----------------------------------------------------------------------------------------------
//-- 16) What if when super class & mixin have same method ?

/**
  Look at the situation we've a class called Father that contains a method giftForSon and we've mixin called mother
  having the same method called void giftForSun and inside the class Son we have used extend father means the superclass 
  Father and we are tyring to use a mixin called Mother and the observable thing is the method giftForSon if coming from
  both the class called Father and from the mixin called Mother now when we run this program  obviously in the main we have
  the object of Son here so through this Son object which giftForSon method will call means either coming from the Father
  class or coming from the mixin called mother so let run this program and .. definitely the method from mother mixin will 
  get call here and the simple reason here is as we know that whenever se a mixin or when we use multiple mixin so we have to 
  think in the form of sequence so as we have a class first so the method of the method giveForSon from the father class will 
  get inherited and as there is the same method present in the mixin called mother so the old method of the father that is 
  the old method giveForSon from the father class will be replaced by the new method of giveForSon by the mother class and that's 
  the reason the new method that is the method from giftForSon from this mother mixin will get placed inside the class so that only 
  one method will be visible inside the class and that's the reason when we run this program we will observe here the method mother 
  has giftForSon that is he mixin the method from mixin is getting executed not from the mixin from class ...
 */


/*
class Father{
  void giftForSon(){
    print('Father has gift for son');
  }
}

mixin Mother{
  void giftForSon(){
    print('Mother has gift for son');
  }
}

class Son extends Father with Mother{
}

void main(){
  var son = Son();
  son.giftForSon();

  /** --- Print Output------
     Mother has gift for son 
   ---------------------------*/
}
*/


//----------------------------------------------------------------------------------------------
//-- 17) Is mixin used for multiple inheritance ?

/**
   Is mixin used for multiple inheritance ? -> We must say NO mixin is not used or it is not at all invented for 
   multiple inheritance rather it is actually used when we have a peice of that has to be used in multiple class 
   hierarchy 
 */


//----------------------------------------------------------------------------------------------
//-- 18)  Can a class extends or implements the mixin ?

/**
   Can a class extends or implements the mixin ? -> When we think about extending mixin in the class it's not possible 
   we can observe here we are trying to extend the mixin called work inside the class called Man and obviously it's not 
   possible that's why Dart pad is giving an error however instead of extending mixin we can implement that one it's 
   possible after removing extends and using instead that implements the error will gone or resolve .. 
   Now after as we writing implements Work means want to use this mixin as the interface for the class so that's the 
   reason instead of getting this complete method definition the abstrat method signature is coming inside the class
   called Man and whichever class that implemetns interface an interface it's a responsibility of that class to override
   the method so the Man class has to implement this working method .. so we've to just copy and paste this mixin Work 
   method inside the Man class after pasting the error will resolve and that's completely working fine.. 
 
 */

mixin Work{
  working(){
    //
  }
}

// class Man extends Work{
class Man implements Work{
  working(){
    //
  }
}


//----------------------------------------------------------------------------------------------
//-- 19) Do members of mixin get inherited in level of inheritance ?

/**
   Do members of mixin get inherited in level of inheritance ? ->  
   We have mixin called Fly that contains method called void flying and the Birds class is using a mixin that is using 
   with Fly so obviously the flying method of Fly mixin will get inherited inside the Birds that's really the thing that 
   we know .. now when we have class called Parrot and this Parrot classs extended the Birds class now the question is 
   whether this method flying from this flying mixin will get inherited inside this Parrot class or not it means whether 
   the methods or the properties of mixin will get inherited in level of inheritance or not as the same that we get in case 
   of extending classes means whenever we extend the classes and we get the level of inheritance all the members of classes 
   gets simulated like from Grandfather to father and from father to son and so on obviously it's getting inherited and we 
   have proof for that one we can observe here in the main we have object of parrot and over this Parrot object we have called 
   the Flying method let run this program we will observe here we will get output called flying from mixin fly....
   so this is proof that method from this fly getting inherited in the Birds and the same method will get inherited in it's 
   subclass and subclass so on .. 
 */

mixin Fly{
  void flying(){
    print('flying from mixin Fly....');
  }
}

class Birds with Fly{
  //
}

class Parrot extends Birds{
  //
}

void main(){
  var obj = Parrot();
  obj.flying();
}


//----------------------------------------------------------------------------------------------
//-- 20)  For using extends, implements & with all in a class, what's the correct sequence ?

/**
   For a single class we are allowed to use extend implements as well as the with for using the mixins now whenever we want to 
   use all these three in a single class what is the correct sequence for using extends implements and with inside a single class
   whenever we  want to use all these three inside a single class make sure that we have to first use extend and we can only extend
   one class that's what we have understood so far in vides and after extend we have to use with caluse and whatever whatever 
   mixins that we want to use we have to specify the list of mixins here and at the end we have to use implements caluse and here
  we have to specify names of all interfaces that we want to implements inside the class ...
 */

// mixin
mixin Study{ }

// class
class Exam{ }

// interface
class Practicals{ }

// sequence
class Student extends Exam with Study implements Practicals{ 
//
}
