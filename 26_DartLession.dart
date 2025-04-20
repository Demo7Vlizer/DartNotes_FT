//-- Types of Constructors in Dart | Dart constructor types

// Default constructor
// Parameterised constructor
// Named constructor
// Factory constructor

//---------------------------------------------------------------------------
//-- Default constructor
//-- Defauult Constructor is basically a constructor that doesn't accept any parameter.. Practically it is a constructor which is also known as zero parameter constructor..
//-- Mainly default Constructor can appear in two different situation.. 1st one is If the class don't have the any constructor Then dart byDefault writes default constructor  that can be default constructor..  written by the programmer explicitly..
//-- DrawBack of default constructor.. -

/*-----------------------------------------
class Employee {
  // fields
  late String name;
  late int salary;
  late String role;

  void showData() {
    print('$name is $role & earns $salary');
  }

  Employee() {
    //-- this constructor we have been written is basically a constructor that has no parameter .. so such type of constructor is known as the default constructor .. this also known explicitly because written by the programmer..
    name = 'Sam'; //== This is now we define the constructor manually..
    salary = 2500;
    role = 'Manager';
  }
}

void main() {
  Employee e = Employee(); 
  e.showData();               //  Sam is Manager & earns 2500

  Employee e1 = Employee(); 
  e1.showData();               //  Sam is Manager & earns 2500
}
------------------------------------------*/

//---------------------------------------------------------------------------
//--  Parameterised constructor
//-- Parameterised constructor is construrctor.. that accept parameter.. that is when we create a object.. while creating the object we've to pass the parameter..
//-- And the parameter values .. that we have passed along with that value.. your object wil initialized..

/*-----------------------------------------
class Employee {
  // fields
  late String name;
  late int salary;
  late String role;

  void showData() {
    print('$name is $role & earns $salary');
  }
  
    //-- Default constructor
    // Employee() {
    //   //-- this constructor we have been written is basically a constructor that has no parameter .. so such type of constructor is known as the default constructor .. this also known explicitly because written by the programmer..
    //   name = 'Sam'; //== This is now we define the constructor manually..
    //   salary = 2500;
    //   role = 'Manager';
    // }

    //-- Parameterised constructor
    Employee(String n, int s, String r) {
      name = n;
      salary = s;
      role = r;
    }
}

void main() {
  Employee e = Employee('Siddh', 2400, 'Team Leader');
  e.showData(); //  Siddh is Team Leader & earns 2400
}
------------------------------------------*/

//---------------------------------------------------------------------------
//--  Named constructor
//-- Named constructor is really a great concept that allows us to create multiple constructor in the class as many as we want using this constructor we've got the flexibility to initialized the object using the differnt technique... 

class Employee {
  // fields
  late String name;
  late int salary;
  late String role;

  void showData() {
    print('$name is $role & earns $salary');
  }

  //-- Default constructor
  // Employee() {
  //   //-- this constructor we have been written is basically a constructor that has no parameter .. so such type of constructor is known as the default constructor .. this also known explicitly because written by the programmer..
  //   name = 'Sam'; //== This is now we define the constructor manually..
  //   salary = 2500;
  //   role = 'Manager';
  // }

  //-- Parameterised constructor
  Employee(String n, int s, String r) {
    name = n;
    salary = s;
    role = r;
  }

  //-- Named constructor ..
  Employee.admin(String n, int s) {
    //-- This complete things called the named constructor..
    name = n;
    salary = s;
    role = 'Admin';
  }
}

void main() {
  //-- Creating object..
  Employee e = Employee('Siddh', 2400, 'Team Leader');
  e.showData(); //  Siddh is Team Leader & earns 2400

  //-- One more creating object..
  Employee e2 = Employee.admin('Mark', 5600);
  e2.showData();  //  Mark is Admin & earns 5600
}
