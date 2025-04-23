//-- Factory Constructor vs Generative Constructor | Factory vs normal constructor

//-- -- -- -- -- -- --- -- -- ---- -- -- ----- -- --------- -- ------ -----------
//-- Normal constructor             ||        Factory constructor..
//-- Can access instance members
//-- Can't access instance members

/*----------------------------
class Test {
  int a = 10;

  Test() {
    a = 5;
    demo();
  }

  void demo() {}

  factory Test.getInstance() {
    a = 5;         // -- We getting here in line no. 19 & 20 because we cannot  access instance variable & instance methods of class .. inside the factory constructor.. 
    demo();
    return Test();
  }
}
---------------------------------*/

//-- -- -- -- -- -- --- -- -- ---- -- -- ----- -- --------- -- ------ -----------
//-- Normal constructor             ||        Factory constructor..
//-- Has acess to 'this' refrence
//-- No access to 'this' reference
//-- Basically 'this' reference   in Constructor is use for three different purposes..
//-- 1) We use  'this' reference to access instance members that is instance field and instance methods of the class..
//-- 2) We use  'this' refrence incase of constructor to have the initializery list that is to initialize the members inside the parameter list of constructor
//-- 3) We use  'this' refrence to is seen constructor to call another constructor from the one constructor but make sure that in factory constructor we cannot have this for any of the use ..

/*--------------------
class Test {
  int a = 10;

  Test(this.a);   //-- Default constructor ..

  Test.demo() : this(10);   //-- In here we calling default constructor it's quite fine.. 

  // factory Test.getInstance(this.a) {      //-- We're getting error beacuse  it's not possible to access this.. in factory constructor.. 
  factory Test.getInstance():this(10){      //-- By this also way still getting error .. 

    this.a = 10;    //-- even in here we getting error .. when we're trying to access member of instance variable.. 

    return Test(10);
  }
}
-----------------------*/

//-- -- -- -- -- -- --- -- -- ---- -- -- ----- -- --------- -- ------ -----------
//-- Normal constructor             ||        Factory constructor..
//-- No need to return instance
//-- Must return an instance explicily..

/*-----------------------------------
class Test {
  Test();

  Test.someName() {
    return Test();      //-- In here in normal constructor we're trying to write return we're getting error..
  }

  factory Test.getInstance() {
    return Test();        //--  but in factory constructor we write return in there it's quite fine.. but it has to be there.. and when we remove the return then we will getting error.. in factory constructor.. it's compusory to return explicitly.. 
  }
}
--------------------------------------*/

//-- -- -- -- -- -- --- -- -- ---- -- -- ----- -- --------- -- ------ -----------
//-- Normal constructor             ||        Factory constructor..
//-- Generates instance of current class only
//-- Generates instance  of current or sub-class..

/*-----------------------
class Father {
  Father();

  factory Father.getFather() {
    return Father();
  }

  factory Father.getSon() {
    return Son();
  }
}

class Son extends Father {
  Son();                    //-- it's clear that we've chocie that either we can return instance of same class or we can return sub class as per required in factory constructor.. 
} 
-------------------------*/

//-- -- -- -- -- -- --- -- -- ---- -- -- ----- -- --------- -- ------ -----------
//-- Normal constructor             ||        Factory constructor..
//-- Returns new instance always ..
//-- Return  new or old instance as implemented

/*------------------------
class Test {
  static final Test _instance = Test();

  Test(){      //--  Whenever we call this constructor we always get new instance or object.. 

  }

  factory Test.getNew() {      //= in Here we always get new instance of Test class.. 
    return Test();
  }

  factory Test.getOld() {      //--In here it's not going to create new instance .. rather it's going to return every time old instance which is already store inside the _instance varible in line no. 106..  
                              //-- so this proves that when we have factory constructor then we've choice either to return new instance or return old instance .. as per the reqruirement 
    return _instance;
  }
}
----------------------------*/

//-- -- -- -- -- -- --- -- -- ---- -- -- ----- -- --------- -- ------ -----------
//-- Normal constructor             ||        Factory constructor..
//-- Can invoke super class constructor using super()
//-- Can't invoke super class constructor using super()

/*---------------------------------
class Father{
  Father(int a);
}

class Son extends Father{
  //
  Son():super(10)   //--  Basically in here it's normal constructor..   that's the reason with this constructor we can use user(10); -> this indicates try to calls super class constructor that access integor type of parameter 


//
factory Son.getInstance():super(10){   //-- But if we try to do same thing in factory constructor but we in here it won't allows us to do this same things.. 

  return Son();   

  }
}
--------------------------------*/

//-- -- -- -- -- -- --- -- -- ---- -- -- ----- -- --------- -- ------ -----------
//-- Normal constructor             ||        Factory constructor..
//-- Can be invoked by sub class constructor  using super()
//-- Can't be invoked by sub class constructor using super()

/*----------------------------
class Father {
  Father(int a); //-- Default constructor..

  factory Father.getFather() {
    return Father(10);
  }
}

class Son extends Father {
  //
  // Son():super(10);    //-- it's trying to call father default constructor and that's perfectly fine..
  Son() : super.getFather()(10); //-- But when we trying to call factory constructor inside super. constructor.. it's has to be normal constructor.. 
}
---------------------------------*/


//-- -- -- -- -- -- --- -- -- ---- -- -- ----- -- --------- -- ------ -----------
//-- Normal constructor             ||        Factory constructor..
//-- Late  initialization of final fields is not possible  
//-- Late initialization of final fields is possible.. 

/*------------------------
class Test {
    final int x;
    final int y;

    Test(this.x, this.y);

    factory Test.getInstance(int x) {
        int value = getData(x);
        return Test(x, value);
    }

    static int getData(int x) {
        // some logic
        return 10;
    }
}
-----------------------------*/

//-- -- -- -- -- -- --- -- -- ---- -- -- ----- -- --------- -- ------ -----------
//-- Normal constructor             ||        Factory constructor..
//-- It is called generative constructor & designed to return new instance every time 
//-- It is made for implementing desinged patterns like factory & single tone   



// That there are .. normal , generative , default are same as well .. there is another one which called named constructor.. and another one is factory constructor..

