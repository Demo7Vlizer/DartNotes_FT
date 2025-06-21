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
  definitely we can say 
 */

mixin MyMath{
  static const double pi = 3.1415;

  static int cube(int no){
    return no*no*no;
  }
}

void main(){
  print(MyMath.pi);
  print(MyMath.cube(2));
}

// https://youtu.be/Z7NLQTm60qo?list=PLeKQz1VjpjFqqXLvQ8rTnYxZcUqEGA0dm&t=756