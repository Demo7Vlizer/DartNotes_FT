//--  Access static variable using object in Dart

/*-----------------------------------
  class Test {
    static int count =
        0; //-- We've static variable in order to get the value of the static variable

    int getCount() =>
        count; //-- We've defined the function called getCount so this is simply telling the value of count

    void setCount(int value) => count =
        value; //-- and to update the value of count we have function called setCount
    //= Basically very important thing is the getCount and setCount they're not the static one
    //they're instance methods in order to get access getCount and setCount we need an object so this is the way number one
  }

  void main() {
    Test t1 = Test();
    Test t2 = Test();


    //-- All this three technique will have access to only single count variable in the class 
    print(Test.count); //- In here didn't get the error beacuse of that .. it's static field.. in line no. 4  and we're access by the help of class name.. -|the print out is .. - 0|-
    t1.setCount(10);      
    print(t2.getCount());   //  10
    print(Test.count);    //  10 
  }
  ----------------------------------------*/

//------------------------------------------------------------------------------------------------------------
//-- Second technique ...

//-- In here instead of using normal function We will use getter and setter that are based on count variable .. 

class Test {
  static int count = 0;

  int get countValue => count;

  set countValue(int value) => count = value;
}

void main() {
  Test t1 = Test();
  Test t2 = Test();

  print(Test.count);              //  0
  t1.countValue = 20;  
  print(t2.countValue);         //  20
  print(Test.count);           //  20
}