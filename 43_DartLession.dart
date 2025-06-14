//-- Interface questions in Dart | Dart Interface questions


//------------------------------------------------------------------------

// 1) Why interface method needs to 
// be override

/**
    Whenever we extends the class ... for example we've a class A that contains methods test so inside the class B as because 
    extending class A for B it's not compulsory to override the methods of class A but another hand instead of writing extend 
    if we change into say implements, now for the class B it's compulsory to override the method void test of this class that 
    the interface A .. When we extend a class it's not compulsory for us to overrride the method and if we want to make that
    class as interface that is when we write implements it's compulsory for that class to override the method now reason here
    is when we extend the class what happens the complete definition of method comes from superclass inside the subclass but 
    when we write the implement so instead of getting the complete definition of method it means in this case when class B 
    implements A so instead of getting complete defintion of this void test method inside a class B only the abstract signature 
    of method is inherited inside the class it means only this void test along with this abstract signature that is making this 
    major abstract will come inside the class B and as we know this class B is not the abstract class means it's a concrete class
    so concrete class cannot have the abstract method declaration that's the reason for this class B it's compulsory to overwrite 
    the methods of interface so we can imagine that interface that is implementing interface it is simply extending the abstract class 
    containing the abstract methods  
 */


/*
// interface
class A{
    void test(){
        print('test() of interface A');
    }
}

// class B extends A{
class B implements A{

}
*/

// -----------------------------------------------------------------------

//--2) How it is possible to implement multiple interface ...

/**
  When we extend a class we can extend atmost one class inside the given class but when it comes to talk 
  about interface it's possible to implement multiple interfaces in a single class then what's a big magic or 
  big secret when we change the extends to implements so for this when we've to understand what happens in case 
  of extend then we will talk about what is the secret or magic in case of implements we know that we've a class 
  C and class A has got method called void test and the same method having same signature void test is present 
  inside the class B it means the class A and B they are the implementing classes and they have got the same 
  method signature however the method defintion might be different here so we have a class C here let us write here 
  extends so we know that we can only extend only one classes just for understanding let us try to extend multiple 
  classes so obviously it's not possible that part is giving an error but just for understanding just imagine 
  that's it's possible so what is happnening here when we write extends so due to extend the complete method definition 
  of the superclass comes inside a subclass .. so what will happen logically here as we are writing extends A and B 
  obviously it's not possible .. so complete defintion of this void test from class A and the complete defintion of this 
  void test present in class B will come inside the class C means class C has got two different definitions of method
  void test coming from A and coming from the class B inside main when we've the object of C and let's say when we write obj 
  dot test so as we know that inside this class C there are two different test Methods so when we write obj dot test so which 
  test to call on the object of C that is coming from the A and coming from B is a big question and that's the reason it's not 
  possible to extend multiple classes in a given class now we might be surprised .. or we might say .. it's clear and and it's 
  known to us than what's big secret when we change it to say extends to implements .. write here implements now error will 
  disappear and the only things is C has to just override the method now what will happen here .. right now we have seen in 
  question number one that whenever we write implements interface so instead of getting complete defintion of method only the 
  method signature that is the abstract method signature that is abstract void test will come from interface A and that will same 
  come from itnerface B it means the class whichever class that implements A and B must override the method called void test 
  so just for the sake of simplicity and to save your time .. and copy and paste 
  -----------
  Hence it's possible to implement multiple interfaces this is because when we implement multiple interfaces 
  and even they have similar methods so the class don't have to define multiple methods because the methods are 
  not coming from the interface only the obstract signature is coming and writing a single method instead of class
  this satisfies your all interfaces that we implemented 
 */


/*
class A {
  void test() {
    print('test() of A class');
  }
}

class B {
  void test() {
    print('test() of B class');
  }
}           

class C extends A, B{
    void test() {
    print('test() of C class');
  }
}

void main() {
  C obj = C();
  obj.test; 
}
*/

/* Print - OutPut --- 
  test() of C class 
 --------------------*/

//-----------------------------------------------------------------------------------------------------
//--3) Implementing interfaces that has same name but different method declaration 


/*
// interface-1
class Test {
    void doSomething() {
        print('doSomething of Test class');
    }
}

// interface-2
class Demo {
    void doSomething(int x) {
        print('doSomething of Demo class');
    }
}

class Sample implements Test, Demo {   // If we've a different name or different paremeter like we see here without perimeter and with perimeter .. so this will cause so many errors.. 
                                      //-- So in this case we cannot implements multiple interfaces.. either we will facing error..
    void doSomething() {
        //
    }

    void doSomething(int x) {
        //
    }
}
*/


//-----------------------------------------------------------------------------------------------------
//--4) Why constructors are not called..

/**
  When we run this program we will observe here before calling the constructor of that is for calling constructor of 
  subclass the default constructor super class get called.. and we've already seen this concept 
  when we change it extends to implements we can observe here when we now run this program now here the constructor of A won't get 
  called here only the constructor B is getting called .. 
  Now what is the reason here when we changing this extends to implements means when we are using this class A as interface here
  the constructor is not getting called the reason here very simple when we extends a class what happens the instance members of class
  will be inherited from super class inside a subclass and the responisibility of inheriting those members is not given to 
  subclass rather it will be managed by superclass that's the reason before calling the constructor of subclass the superclass
  constructor gets called and we have a control to call appropriate constructor of superclass using  super keyword
  But what happens when we have interface the instance member of interface are not inherited in the subclass it means whnever we 
  have interface the instance members of interface must be overwritten by subclass means dart won't rely on the instance 
  memebers of interface as it is coming in the subclass rather the subclass would have it's own members that is own instance 
  variable and the complete reponsibility of initializing those members is given to the class and not to the interface that's the 
  reason it don't make any sense to call the constructors of interface and tha's why whenever we implements interface the 
  constructors of implements not get called  
 */


/*
// interface
class A {
    A() {
        print('A() called');
    }
}

class B extends A {
    B() {
        print('B() called');
    }
}

void main() {
    B obj = B();
}
*/



//-----------------------------------------------------------------------------------------------------
//--5) What about instance variable in interface..

/**
  We know that whenever we extend a class the instance members of superclass gets inherited in subclass then what is the case 
  when the interface contains the instance method we can observe here the class A that is the interface A has got the instance 
  variable in the form of integer   data with value 10 and class B implementing interface A now whenever a class implements 
  interface and the interface has got distance variables then for such interface there are two solution or there are two choices 
  the first is the class must overwrite that specific instance member that is it has to define the integer data so we snould write
  here let's say here integer data copy and paste it and change the value ..
  now the second option is if we don't want to define same name variable or the same instance members so what we have to do 
  we've to define some different variable here myData something like that now after that we getting error.. 
  so if we defined variable with some different name then it's compulsory for us to have the getters and setters having the same 
  name so we should write here getter and setter after adding this the error will gone.. 
  so means here we've two different choices either we have to define the variable as it is inside the super class or 
  if we don't want to define variable as it is you want to go with different name in the variable then we've to define the 
  getter and setter having exactly same name of the instance variable present in the interface make sure that you must have deal with
  the instance variable present in the interface in the same way we deal with the methods present in the interface 
 */


/*
class A{
    int data = 10;
}

class B implements A {
    int myData = 20;

    get data => myData;

    set data(value) => myData = value;

}

void main(){

}
*/


//-----------------------------------------------------------------------------------------------------
//-- 6)  Why static members are not required to override 

/**
   We know that whenever we have these static members in class that is static members of interface or class so whatever 
   static variables or static methods we have these static members are not actually a part of object they are part of class 
   that's the reason when interface has this static variable and when we implement such interface we can observe here
   inside class B it's not compurlsory for us to override this static variable or static methods ..
   however if we change it to non-static let's if we delete the adding from here now it's compulsory for us and right now 
   we have seen this things in  question no. five so if we make it static it's fine here either it'll show error ..
   and if we want to override we can override happily nobody will stop us from overriding but it's not compulsory for us to override
   the static members of interface inside the class that implements interface ..
 */

/*
class A{
    static String color = 'Red';

}

class B implements A {

}

void main(){

}
*/


//-----------------------------------------------------------------------------------------------------
//-- 7)  Why interface members can't be accessed using super keyword

/**
   We know that whenever we inherit something that that is whenever we inherit a class by using extend so it's possible 
   for a subclass to invoke or to call the members of superclass by using super class keyword through the subclass members 
   but if we try to do same things in using the interface that is using the implements keyword it's not going to happen 
   and it's not going to work look at this example here carefully.. 
   we class A that contains void test methods and we have B observe here we have done extend and not the implements means 
   we want to use this class here the super class and be on the subclass here we got a void test methods so we have just 
   overwritten test method of a inisde the class B and we have a method called demo we can observe here inside the main 
   or of object of B and over this object we have simply called the demo method inside demo we have called the method test 
   so when we run here we can observe here inside class B there are two different test method are available one of the class 
   B and another that is coming from class A so whenever inside this remove we calling a test we can observe the taste of B
   is get called ..
   now if we want to call he text of a which is available inside the class B so simply we can write here super dot test and
   when we write super dot test let us rerun this program we will observe here the test method of A is getting called ..
   means we can call or we can use the test method of B and we can also call the test method of A using the super means inside  
   this class B we have access to two different types of test of B and the test of C as well..
   let's us to change this extends to implements so let us write implements now as soon as we have written implements we can 
   observe here we getting error in line no. 17 so using this super dot test is not allowed it says the method test is always 
   abstract and the he in the super type ..
   what's the reason here so whenever we write implements and we implements some interface inside the class so it's not possible
   for us to call the members of interface by using the super keyword so .. why this happens means when we write extends we can
   access that one but when we change that extends to implements we don't have rights to call that methods the simple reason here 
   is whenever we write implements A so for this class B A is not the super class it is the interface so as this A is implemented 
   means A is using as interface so the complete definition of this A that is complete defintion of the test method is not in the 
   mind of dart what dart says dart will just look at this as interface and it will just treat this void test complete defintion
   simply as the abstract definition and as we know that the abstract methods cannot be called that's the reason we cal also says
   that methods test is always abstract in the super type means inside this A dart won't look at this complete definition instead 
   dart will look at the abstract definition that is abstract class abstract method test is that's the reason we cannot call any 
   method of interface by it means through the sub class by using this super keyword ..
 */


/*
// interface
class A{
    void test(){
        print('test() of A called');
    }
}

class B extends A{
    void test(){
        print('test() of B called');
    }

    void demo(){
        // test();
        super.test();
    }
}

void main(){
    B obj = B();
    obj.demo();
}
*/



//-----------------------------------------------------------------------------------------------------
//-- 8)  What about getters and setters 

/**
  What about getters and setters present in the interface we know that whenever there is a method interface so for 
  implementing class it's compulsory to override all methods of interface and do you know the getters and setters 
  are again these special methods that's the reason we can observe here we have class B which is implementing interface 
  A and as this interface A has got the getters x and the set of x so for the class B it's compulsory to override the 
  gretter and setter to let us copy this from here and let us past it inside class B .. 
  now it's going to solve the problem but the problem here is that.. we don't have this variable here htat _x=10;
  so we've to copy this one inside the class B .. so observe here as we have just written the getter and setter 
  inside the class B error will resolve ... 
 */


/*
// interface
class A{
    int _x = 10;

    get x => _x;
    set x(value) => _x = value;
}

class B implements A{
    int _x = 20;
    get x => _x;
    set x(value) => _x = value;
}
*/


//-----------------------------------------------------------------------------------------------------
//-- 9) Implementing interface with extending a class containing methods in interface .. 

/**
  In here we've class and we just want to use this class as interface that contains methods called void test and 
  having some defintion and we've class B and here we want to use this class B as a class and it has also again got 
  the same method but with different definition so method signature of this test in class B and that is interface A 
  are the same and make sure that A is interface B is a class means they are totally different and they are distributed 
  we have class C that extends B and implements A here now we might have question what happened to C means what is the 
  compositive thing in this class C and that's what our question is 
  we can observe here we are implementing interface and we know interface has got the method and we are extending class 
  and  luckily this class has got the same methods so in such a scenario this class c don't have to overwrite means for this
  class c it's not compulsory to override methods of interface the reason here is as we write implements A so it's compulsory
  for this class C to just override the methods test that is void test but as this class is extending B and by default means 
  readily from this class B the method test is coming inside the class C that's the reason for this class C it's not compulsory
  to overwrite a method of void test because it's really coming from class B ..
  Now we might have question that when we create the object of c in the main and manipulate object test over this object of C 
  then which test method is going to call and the answer is very straight forward as the method of B is coming inside the class
  C we know that when we implement interface instead of getting the complete method defintion only the abstract signature of method 
  is getting called and the complete defintion of method from class B is getting inside the class C that's the reason when
  we run this program the method B of class means the test of class B is getting called we can observe .. it says the test of B
  is getting called now we might have question class C can also override the method yes it's possible class C can write its own 
  method let us copy this method and let us paste inside the class C of B method after this rerun this program as we know that the 
  test method is present inside the class C so instead of relying the method of B or A Dart will call the test method of C 
  and that's what the output we have got in the console 
 */


/*
class A {
    void test() {
        print('test() of A interface called');
    }
}

// class
class B {
    void test() {
        print('test() of B class called');
    }
}

class C extends B implements A {
    void test() {
        print('test() of C class called');
    }
}

void main() {
    C obj = C();
    obj.test();
}
*/

//-----------------------------------------------------------------------------------------------------
//-- 10) Implementing interface using mixin .. 

/**
  Implementing interface with mixin it's means what happens when we implement the interface and when we also use the mixing 
  and make that when we when it has the same method will happen here look at this magic here with an example ..
  We've a class A we want to use this one as interface it contains a method called do something and there is some
  definition of this method we've a mixing here in a common B and it has got the same method called do something 
  with some different definition we can observe here we have a class Demo with B means here we want to use mixing and 
  implements A so inside this class Demo it's not compulsory for the class Demo to override the method of interface 
  this is because when we write implements A the abstract defintion of this do something is coming and it's compulsory
  limits it's making a big Demo to force the method but luckily as we written with B so from this mixing B the complete 
  definition of do something is coming inside the class Demo and that is just simply that is the satisfying the interface A
  so for Dmeo it's not compulsory to override the method now when we create the object of Demo in a main and when we call the 
  method obj dot do something then obviously the method of mixing that is do something of mixing is getting called we can observe 
  here we getting the do something of method that is mixing is getting called.. now what happen if we override the method 
  inside the Demo so we can order that one let us copy and paste it here .. 
  let's us change it say do sometihng of Demo class... 
  and then we rerun this program we will observe here the just overwritten method that is the new method we have do something of 
  Demo class is getting called and that is what output we have 
 */

/*
class A {
  void doSomething(){
    print('doSomething() of interface A');
  }
}

// mixin
mixin B{
  void doSomething(){
    print('doSomething() of mixin B');
  }
}

class Demo with B implements A {
   void doSomething(){
    print('doSomething() of Demo class ');
  }
}

void main(){
  Demo obj = Demo();
  obj.doSomething();
}
*/



//-----------------------------------------------------------------------------------------------------
//-- 11) What happens when abstract class implements an interface ?

/**
  Look at this example here.. we know that whenever a class implements means interface so for that implementing class
  it's compulsory to override all methods present in the interface so we can observe here we have class B so for
  class B it's compulsory but if we change this class B that is if we change this concrete class to absolute
  class let us write it abstract so as soon as we have written here abstract we can observe here the error 
  has gone this is because the class B is abstract and we know that whenevver we write implements see 
  instead of getting the complete method definition only the abstract signature of method is going inside 
  the class B and as class B is abstract so obviously abstract class can have the abstract method and that's 
  why for abstract class it's optional to override the method of interface means abstract class can override 
  and if it does not want then it cannot override that method .. however for concrete class it's not the case it's 
  must have to overwrite the methods of interface 
 */

/*
class A{
  void test(){
    //
  }
}

abstract class B implements A{

}
*/


//-----------------------------------------------------------------------------------------------------
//-- 12)  Do we need to override constants of interface ?

/**
   In dart we can create constants in two ways using the const keyword and using the final keyword and obviously when we 
   use const keyword here we ought to write static here .. so when we've a constant in interface using the const so for 
   this implementing class it's not compulsory to overwrite such a constant .. but if we check if we make the constant 
   using final so let us change ti to say final so as we have a constant made using final it's compulsory for this class 
   B to override such a constant so make sure that constants that is the constant which are made using final in interface 
   they need to be override the class however the constant means using const need not to be override in implementing the 
   class 
 */


/*
class A{
  static const int X = 10;

}

class B implements A {

}
*/


//-----------------------------------------------------------------------------------------------------
//-- 13) Can interface extend a class?

/**
   Can interface extend a class -> obviously it's possible because every interface is a class and obviously 
   class can extend a class so it's possible look at this example here We've a class A and we simply want 
   to use this class a As a class and and it has method got a method called void test then we've a class B 
   so here we just want to use this class based interface for the C we can observe here our B has extended A 
   and inside this class C we have used written or we use our implements B means for class C  B is interface
   and B is itself extending class A so it means interface B can extend class A and it's completely fine 
   now we might be thinking we are getting error here the reason for error is as we have returned class 
   B extends A means the method test of class A is coming inside class B and however when we write extend 
   we are getting complete definition but as B is used as interface so for C it's compulsory to override 
   the method test of class A so make sure that there is not method in class B that is inside interface B 
   still for this class C it's compulsory to override method because that method is present in the class A 
   and now if the class B got the same method let's see if it has the methodology involved demo then we can 
   observe inside class C there are two errors we have to define the method called test and method called 
   demo this is because demo is a method of the interface itself so it's compulsory and test method is 
   coming from class A from this interface B is coming in class C that's why C has to implement two methods demo
   and the test 
 */


/*
class A{
  void test(){}
}

// interface
class B extends A{
  void demo(){}
}

class C implements  B{
  //
}
*/


//-----------------------------------------------------------------------------------------------------
//-- 14) Can interface implements another interface ..

/**
  Can interface implements another interface -> Yes it's possible.. interface is a class when we try to implement some another 
  interface and that is again a class so it's possible that one interface can implements another interface look at this example here 
  We've a class A so here we just want to use this class as a interface and that contains method void test and we've class B 
  so make sure that here class B is means we just want to use this B as interface and we want to use this as interface that's why 
  we return B implement means for this class B .. A is interface and B is implemented By C so it means for C B is interface and for B 
  A is interface .. so it's logically that the class B that is interface B is implementing interface A so it's proves that interface 
  can implement another interface but make sure that as we are implemeting means let's say we remove everything from here we will observe 
  here inside B we are getting error this is because there is method called test inside class A that is inside interface A that's why inside 
  B it's compulsory to have this void test so we should like void test that's okay in the class B but we'll have the error in class C is 
  Because first C B is again interface so for C we must define this void test method so let us copy and paste inside C class now after this
  pasting the error will resolve .. 
  But let's say if this class B that is interface B has got some method let's say it's has got a method called void demo .. then we can 
  observe here as B interface we are getting error so inisde the C also we must override and we must have some different definition of 
  demo just for saving our time we just copied and this inside class C .. void demo .. method -> that's clear interface can implement 
  another interface and also it's clear what is the complexity or what is the thing that means what is the case of inheriting or overriding 
  the methods in such a implementing interface cases 
 */

class A{
    void test(){}
}

// interface
class B implements A{
    void test(){}
    // void demo(){}
}

class C implements B{
    void test(){}
}



//-----------------------------------------------------------------------------------------------------
//-- 15) Which of the following can be used as interface ? Concrete class, abstract class.. 

/**
  Which of the following can be used to define an interface the concrete class or the abstract class -> both the concrete 
  class and abstract class can be used as interface because in dart by default a class will act as interface so it doesn't matter 
  what class it is with it's abstract class or concrete class each and every class in dart is itself the interface so it's our choice
  what we want to use definitely we can go with whatever we prefer as per our requirement 
 */