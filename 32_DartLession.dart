//-- Static Variable & Static Method in Dart | Use of static in Dart

// ------------------------------------------------------------------------------------------------------------
//-- Static variabel..

/*
class Test {
  static int x =
      10; //== but as This is static - so for all the object in the program there will be single copy of y which shared by multiple objects..
  //== MoverOver static variable are asociated with the class rather than the object.. that's why they are also known as class varible..
  int y = 20; //-- this type of field is called known as non - static field..
}

void main() {
  Test obj1 = Test(); //-- from this there will be separate copy of this x
  Test obj2 = Test();

  //== if we're trying to acces like this we'll getting error..
  /* 
  Because as the name sujest that is instance variable - instance in the sense this variable x will appear in the memory 
  where only and only   when you create a instance means this variable not the individual variable .. it'll always present inside
  the object or an instance that is inside an object.. that why that's is called instance variable.. 
  and another static of x variable is not instance variable.. 
   */
  print(Test.y);       //-- In here we getting due to we're trying to access instanace variable 

  // -- if we want to access that static x variable if we try to acess by using instance like obj1 or obj2 in this case we will get error
  //== Such varible must be access by uing class name.. - so whenever class is getting  loaded in the memory  your y variable will ready for you.. 
  //-- But it's not the case with the y variable.. 
  print(Test.x);
}
*/

// ------------------------------------------------------------------------------------------------------------
//-- Static Methods....

/*
class Test {
  //-- Now here that Test.. class that contains show methods in line no. 39

/*
  //-- Methods -> this type of methods called instance methods.. - it's means whenever we want to use this method we must have an object so over the object we can call the method show 
  //== But consider a situation where we want to call a method  or  we want to use the methods without using an object so such a methods must be a static method 
  //-- We mostly define a method static when we want to do some utility task means there is nothing to be done over the value of an object means we don't want to play with instance values rather there is some utility task to be done by the method so in that case it's preferred to make that method static 
  void show(){
  }
*/

  static void show() {}
      }

void main() {
  //-- now we call this show methods without an object.. in here.
  Test.show(); 
}
*/

//********************************************************************************* */
/*
class Test {
  static String getFormatted(DateTime value) {
    String s = '';

    //
    return s;
  }
}

void main() {
  Test.getFormatted('TuesDay' as DateTime);

}
*/


// ------------------------------------------------------------------------------------------------------------
//-- Restrictions on static variable or method
//--  ✔ static method can't access non-static members of class

/*------------------------------
class Abc {       //-- Class Abc
    int x = 10;          //-- non static field 
    static int y = 20;  //-- static field 

    void test() {      //-- Also We've method called test - and this is non-static method 
        x = 100;    //-- In normal methods we call both instance variable and static variable.. it's possible 
        y = 50;
        show();
        showMe();
    }

    static void demo() {    //-- Aslo we've static methods 
        x = 100;         //-- Now we observe here.. that x instance variable showing error.. 
        y = 50;       //-- But in here we don't get any error here because of that .. this is static variable.. 
        show();           //-- Here we also we getting error because it's non-static method..  so which is not allwed to access from the static method demo 
        showMe();
    }

    void show() {}

    static void showMe() {}
}
-----------------------------------*/

// ------------------------------------------------------------------------------------------------------------
//-- Restrictions on static variable or method
//--  Static methods has no access to this reference 

/*
class Abc {
    int x = 10;

    void test() {
        this.x = 20;
    }

    static void demo() {
        this.x = 20;         //-- in here we getting error.. due to we cannot use this inside static methods.. . 
    }
}
*/


// ------------------------------------------------------------------------------------------------------------
//-- Restrictions on static variable or method
//-- We can't define global function as static ... 


/*-----------------------
static void demo() {}

class Test {
    static void show() {}
} 
----------------------------*/


// ------------------------------------------------------------------------------------------------------------
//-- Restrictions on static variable or method
//-- We can't define global or local variable as static.. 

/*------------------------
static int x = 10;     //-- Here we getting error .. because in here we cannot use static .. beacuse this x variable it's not the class or not the field 
                      //-- So if we want to define a variable as a static it must be a part of class or field so it cannot be a global variable even it cannot be the local variable of method

class Test {
    void show() {
        static int y = 20;  //-- This is y variable is local local variable.. it's now allowed  to use static.. - if we remove static the error will disappear from line no. 144 .. 
    }
}
---------------------*/

// ------------------------------------------------------------------------------------------------------------
//-- Restrictions on static variable or method
//-- Static members can't be accessed using an instance ...


class Test {
    static int x = 10;
}

void main() {
    Test obj = Test();
    // print(obj.x);          //-- In here we getting error because of that we're trying to access by the instance name obj - 
    print(Test.x);          //-- It has to be access by class name then the error will disappear..   
}