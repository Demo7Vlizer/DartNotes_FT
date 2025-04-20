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

void main() {
  Person p1 = Person();
  p1.setData('Sam', 24);
  p1.showData();

  Person p2 = Person();
  p2.setData('Jack', 35);
  p2.showData();

  /*  -- Printint OutPuts --
      Name = Sam
      age = 24
      Name = Jack
      age = 35
  -----------------------*/

}

class Person {
  //-- The name and age that we specify the inside the Person class are called as the field or instance variable..

  String?
      name; //-- Dart is giving a error we've to assign the variabe.. so in this case we've 1st provide constructor.. or 2nd one is late or assing the varilabe later on keyword used..
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
