//-- classes & objects in Dart | Dart class & object

/*----------------------------------------
    - What is Class?
### **What is a Class?**
- A class is the **blueprint** of an object.
- It is the **logical view** of an object.
- A class serves as a **template** that determines the properties and behavior of an object.
- It is a **user-defined data type**.

### **What is an Object?**
- An object is an **instance** of a class.
- It represents a **real-world entity**.
----------------------------------------*/

//-- Class given Keywords..
/*------------------- 
  class ClassName{
    // fields
    // methods
    // constructors
    // getters
    // setters
  }
------------------*/

//------------------------------------------------------------
//-- Creating Class..

/*-----------------------
  class student {

  // fields 
  int rollNumber;
  String name;

  //method
  void study(){
    //...
  }

}
---------------------------*/

//------------------------------------------------------------
//-- Creating Object..

/*---------------------------
ClassName ref = ClassName();            ||   Student s = Student();
-----------------------------*/

//------------------------------------------------------------------------------
//-- Create a Class..

//-- Now we actually called them as a methods..

/*----------------------------------------------------------
void main() {
  Person p1 = Person();
  p1.setData('Sam', 24);
  p1.showData();

  Person p2 = Person();
  p2.setData('Jack', 35);
  p2.showData();

  /*-- Printint OutPuts --
      Name = Sam
      age = 24
      Name = Jack
      age = 35
  --------------------*/

}

class Person {
  //-- The name and age that we specify the inside the Person class are called as the field or instance variable..

  String?name; //-- Dart is giving a error we've to assign the variabe.. so in this case we've 1st provide constructor.. or 2nd one is late or assing the varilabe later on keyword used..
  int? age; //-- And the 3rd option is that make this variable  as a  nullable

  void setData(String n, int a) {
    //-- this setData & showData this are the function inside the class.
    name = n;
    age = a;
  }

  void showData() {
    print('Name = $name');
    print('age = $age');
  }
}
-------------------------------------------------*/

//------------------------------------------------------------------------------
//-- Key points of classes & objects in Dart

/* --------------------------------------

### **Key Points for Classes & Objects**
- A class can contain the following:
  1. **Fields**
  2. **Methods**
  3. **Constructors**
  4. **Setters**
  5. **Getters**

---------------------------------------*/

//************************************************************ */
//--

class Student {
  // field
  String _name;

  // print('Hellow');         //  it'll show error if we write like this ..

  // constructor
  Student(this._name);

  // method
  void showData() {
    print(_name);
    print('Hellow');
  }

  // setter
  void set name(String n) => _name = n;

  // getter
  String get name => _name;
}

//------------------------------------------------------------------------------
//- "To access class members outside the class object is required, whereas to access them inside the class no object is required."

/*----------------------
class Person {
  String name = 'Sam';
  int age = 21;

  void showData() {
    print(name);
    print(age);
  }
}

void main() {
  // print(name);       //-- This shows error because we trying to access members direclty we've to access by the object..

  Person p = Person();
  print(p.name);       //  Sam
}
--------------------------*/

//------------------------------------------------------------------------------------------------------
//-- "For each object, there is separate copy of instance variables whereas methods are shared commonly."

/*---------------------
class Person {
  String name = 'Sam';
  int age = 21;

  void showData() {
    print(name);
    print(age);
  }
}

void main() {
  Person p1 = Person();
  Person p2 = Person();

  p1.showData();      //  Sam  21
  p2.showData();     //  Sam 21
}
-----------------------------*/

//------------------------------------------------------------------------------------------------------
//-- Every object is unique & has different hash code..

/*-------------------
class Test {
  //
}

void main() {
  Test t1 = Test();
  Test t2 = Test();

  print(t1.hashCode);    //  908789998
  print(t2.hashCode);    //  573928225
}
-------------------------*/

//------------------------------------------------------------------------------------------------------
//- Dart Supports public & private type of members in the class

/*-------------------------
class Test{
    int? x;     // public field    // -- It can be access in any of the dart file available in the project..
    int? _y;    // private field   // -- This varible are only access inside the file where the class Test is present 

    // public method
    void method1(){
    }

    // private method
    void _method2(){
    }
}

void main(){
}
-------------------------------*/

//------------------------------------------------------------------------------------------------------
//-- Class members cannot have same name as class except the constructor...

/*--------------------------------
class Demo {
  //int? Demo;    //-- If the name of class is Demo we can create constructor the name of Demo  but we cannnot create the variable in the class with the same of Demo.. 

  Demo() {
    print('Demo() constructor');
  }
}

void main() {
  Demo d = Demo();       
}
-----------------------------------*/

//------------------------------------------------------------------------------------------------------
//-- There cannot be same name for fields & methods , even we cannot have setter or getters with the same name as field name..

/*----------------------------
class Test {
  int? demo;

  void demo() {    // -- It mean the name of variable is demo Then we cannot create the methods having same name of demo.. 
  }

  int get demo => demo;      //-- Even it's not possible to create getter or setter with the same name of demo

  void main() {
  }
}
------------------------------*/

//------------------------------------------------------------------------------------------------------
//-- Objects & reference  are different things..
//- Obect is actually is an instance of class that will be present inside the memory
//- And the varible holds the adress or hashCode of that the object is actaully known as refrence ..
//- So the refrence is the link for us in order to interact with an object..

/*----------------------------
class Person {
}

void main() {
  Person p1 = Person();
  Person p2 = p1;

  print(p1.hashCode);   //  480534524         //-- both are same because of that p1 and p2 both this references are referring to an single object. 
  print(p2.hashCode);   //  480534524
}
-----------------------------*/

//------------------------------------------------------------------------------------------------------
//-- Dat won't support the function overloading..
//-- Function overloading is basically a concept that allows us to define multiple function having the same name.. just by chaning the parameter  list of function.. which is actually available in C++ and Java

/*--------------------
class Test {
    void demo() {
    }

    void demo(int x) {       //-- THis is showing error..
      //
    }
}
----------------------*/

//------------------------------------------------------------------------------------------------------
//-- Every class in Dart inHerits the Object class..

/*---------------------------
class Abc {   

}

void main() {
  Abc a = new Abc();
  print(a.hashCode);         //  179809586
}  
--------------------------------*/


//*************************************************** */

/*----------------------------
class Abc  extends Object{       // this also having the same meaning.. 

}

void main() {
  Abc a = new Abc();
  print(a.hashCode);         //  179809586
}  
--------------------------*/


//------------------------------------------------------------------------------------------------------
//-- Public & private members in Dart | Dart visibility 
//-- Private mean what it means such a members can be access only inside this specific file or project inside the Person class.. 

/*-----------------------------
class Person{
  String name = 'Sam';
  int age = 26;
}

void main(){
  Person p = Person();
  print(p.name);         //  Sam
  print(p.age);         //  26
} 
----------------------------------*/

/***************************************** */
//-- This private It won't able to access in different file or in different class. just only in this class. it'll access..

class Person{
  String _name = 'Sam';
  int _age = 26;
}

void main(){
  Person p = Person();
  print(p._name);         //  Sam
  print(p._age);         //  26
} 