//-- Use of this in Dart | this keyword in Dart |

/*  
------------------------------
//-- Topics to Cover..................................
1. **Basics of getters & setters:** An introduction to their purpose and syntax.
2. **Why to use them:** Exploring their benefits, such as encapsulation, controlled access, and validation of data.
3. **Queries (Tips):** Practical advice or techniques to effectively implement and utilize getters and setters in programming.
-----------------------------
 */

// ---------------------------------------------------------------------------------
/*  
---------------------
1. **Definition**:
   - Getters and setters are special methods that provide explicit read (`get`) and write (`set`) access to an object's properties.

2. **Syntax**:
   - Dart uses the keywords `get` and `set` to define getters and setters.

3. **Functionality**:
   - **Getter**: Acts as an accessor, allowing the retrieval of a field's value.
   - **Setter**: Serves as a mutator, enabling the update of a field's value.
-----------------------------------------
  - In programming concept or this terms accessor and immutator ?
  Accessor is the method that only access the value of field means using that method we just read the value but we cannot change the value of something 
  On the other hand mutator is a method that always has to update or change the value of something it never reads the value for you
  -----------------------------------------------------------

  So as we know getter is some method that allows us to read the value but technically what the basically the getter is getter is 
  a special method that takes no parameter and can be called means we always call that method without an explicit argument list 
  the getter method is always preceded that is it is always defiened using the keyword called gate and it cannot have any parameter list
  not even empty when we defined the method .. 
  -----------------------------------
  Now practically  what this setter is we know that is setter is something or say there is some method that allows us to change 
  the value of a particular field but basically a setter is a special method that takes exactly one parameter and does not return any
  value means while defining a setter we cannot write the return type for that one we can write void or we have to ignore that one in 
  most of the cases we ignore because the dart suggests don't try to avoid the written type for the setup we gotta ingore that one..
  and in order to define the setter method we always have to use the keyword called set 
 */

/*------------------------------
class Person {
  //-- We've class called Pesron here that is two public field name and age..
  String _name;
  int _age;

  //-- And this one is the constructor - where getting the value of name and age..
  Person(this._name, this._age);

  int get age => _age;

  // set age(int value) {
  //   _age = value;
  // }
  //-- We also write like this..
  set age(int value) => _age = value;
}

void main() {
  Person p = Person('Sam', 20);

/*
  p.age = 25;     //-- In here we actaully changing the value of this age in this case we're using the implicit setter for this age 
  print(p.age);  //-- In here we actually accessing the value of this age so in this case we calling the implicit getter related to the field called age.. 
*/

  p.age = 25;   //-- In here we're trying to assign the value at this time your dart understand that you're not doing some accesssing activity  you're doing the activity to update the value.. so immediately call the setter here .. not the getter 

  //-- In here basicaly we calling  a getter over this object for field called age
  print(p.age);  //-- In this case we're not trying to assign the value inside this one that's the reason dart understand it is just activity of reading or accessing something value  so it'll happily call the getter 
                //-- after running this program it'll print 25 
}
-------------------------------------*/

// ---------------------------------------------------------------------------------
//-- Now let's understand practical use of getter and setters
//-- Four different uses of getter and settters
//-- 1) validating input  for the fields

/*------------------------
class Student {
    String _name;
    int _age;

    Student(this._name, this._age);

    int get age => _age;

    set age(int value) {
        if (value > 0) {
            _age = value;
        } else {
            print('Age cannot be negative');
        }
    }

    void showData() {
        print('$_name is $_age yrs old');
    }
}

void main(){
  Student s = Student('Sam', 21);

  s.age = -2;
  s.showData();

  s.age = 25;
  s.showData();

  /* -- Print outPut
        Age cannot be negative
        Sam is 21 yrs old           //-- this one is old data..   
        Sam is 25 yrs old
  */
}
------------------------------*/

// ---------------------------------------------------------------------------------
//-- Now let's understand practical use of getter and setters
//-- Four different uses of getter and settters
//-- Setting or getting Calculation based values....

/*
class Employee {
  String name;
  DateTime joiningDate;

  Employee(this.name, this.joiningDate);

  int get daysOfWork {
    // today is 23 June 2025
    return DateTime.now().difference(joiningDate).inDays;
  }
}

void main() {
                                        // 18 June 2022
  Employee e = Employee('Sam', DateTime(2025, 4, 20));

  print(e.daysOfWork);    //-- 6    //-- Six days of working happening of Sam  in this company's 
}
*/

// ---------------------------------------------------------------------------------
//-- Now let's understand practical use of getter and setters
//-- Four different uses of getter and settters
//-- The most common and world is use of getter and settter is -> (Making the fields read only.. )

/*----------------------
//-- Let's see the problem before the example.. 
class Test {   //-- Here the class Test that contains the underscore x as the private field 
  int _x;       //-- But we want to make this one as the read only means anybody can read the value but it cannot be changed 

  Test(this._x);

  int get x => _x;       //-- So for that we've defined the getter and the name of getter is x and from this getter we simply returning the value of _x here 
}

void main() {
  Test obj = Test(10);    //-- We can obtain in the main we've the object in the form of obj

  print(obj.x);   //-- In here we call say obj dot x , so whenver we use this obj dot x it is basically a heater that is invoked over thsi underscore x 
                //- and when we run this we can observe here we getting the value of x as a 10
                
}
-------------------------*/

// ---------------------------------------------------------------------------------
//-- Now let's understand practical use of getter and setters
//-- Four different uses of getter and settters
//--  Makes the code clean  & simplifies the operations on objects..

// ---------------------------------------------------------------------------------
//-- Queries / Tips

//-- Why Dart has explicit getter & setter ?
/*    
    We know that by default we have the implicit getters and setters if we have the public fields 
    so why dart has given explicit getters and setters , we know one impportant things is that if we've a class and inside this class 
    by using the normal methods we can define the getter and we can define the setter means like what we define in case of other programming languages 
    that's completely fine.. but here one drawback means let's say if we define the getter so there's no guarantee or there is no option that a programmer 
    can't have no parameter function or no parameter method means  he can define the parameter if you want .. 
    or while defining a setter he may not accecpt the parameter because he is writing the code he is ofcourse the boss of the code.. 
    but if you use the explicit getter and setter using the get and set given by the dart so your force that your getter should not have parameter and your setter should have exactly one parameter 
    and moreoever if ask that what is the basic reason dart has given so we have right now seen there are four basic reason why the dart 
    suggest or why dart has the this explicit getter and setter -- 
    the first one is to have validation for input values second to make your fields read only that one to have some calculation based concept or some 
    calculation based methods when we are setting the values or when we are getting the value fields and the fourth one it makes your code more clear .. and simple to perform operations for the object.. 
 */

//***************************************************************** */
//-- What is default return type of getter?

/*---------------------
class Person {     //-- We've class  called Person that has two fields underscore name and underscore age.. in the form of private fields.. 
  String _name;
  int _age;

  // Then we've constructor that gets the value for that one 
  Person(this._name, this._age);  

  int get age => _age;   //-- When we click on get and then return type of this get is by default dynamic - if you're not specifying  it explicitly   

  set age(int value) => _age = value;
}

void main() {
  Person p = Person('Sam', 21);

  p.age = 25;

  print(p.age);
  print(p._name);
} 
-----------------------*/

//***************************************************************** */
//-- What about retrun type of setters ..?
/*    
  Basically as per the rule in dart we cannot return anything from the setter 
  So it's always recommended that you should not write the written type of setter .. 
  And we cannot return any value from this setters 
 */

/*---------------------------
class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  get age => _age;

  set age(int value) => _age = value;
}

void main() {
  Person p = Person('Sam', 21);

  p.age = 25;

  print(p.age);
}
-----------------------------*/

//***************************************************************** */
//-- Number of parameters for getters & setter ..

/*    
    As per the rule in dart we cannot write any parameter for the getter it's means when we define a getter we  cannot even write opening and closing paranthesis for the
    getter so it has to be ignored or it has to be removed and whenever we call that particular we cannot pass a value to that specific field or to that specific variable..
    and when we defined the setter it's compulsory for us to have exactly one parameter for the setup means we cannot  have zero parameter or we cannot have more than one parameters for the setter 
    then we have different data types for getter and settters than the field type in  most of the cases we never do this thing but in rare cases if it requires means if your  values 
    is based on some calculation  or there is some lagic that has to be peroformed and that is resulting into different type rather than type of your field then it's definitely possible 
    and you can define that kind of getter and settter ..
    we already seen that example here ---
 */

//--   we already seen that example here ---

/*------------------------------
class Employee {
  String name;
  DateTime joiningDate;

  Employee(this.name, this.joiningDate);

  int get daysOfWork {
    // today is 23 June 2022
    return DateTime.now().difference(joiningDate).inDays;
  }
}

void main() {
  Employee e = Employee('Sam', DateTime(2022, 6, 18));
  print(e.daysOfWork);
}
--------------------------------*/

//***************************************************************** */
//-- How many getters and setters are allowed for one field.. ?
/*    
  Practically it's possible to define multiple getters and setters for the single field but actually we don't need this one.. 
  But there might be rare cases 
 */

class Rectangle {
  //-- We've class callled Rectangle that contains two fields the lenght and breath
  int length;
  int breadth;

  //-- And this is what a constructor that gets the value of lenght and breadth
  Rectangle(this.length, this.breadth);

  //-- The first getter defines..
  int get area => length * breadth;

  //-- The Second getters defines.. here - this getter that has to done here perimeter of this particular rectangle using some formula..
  //-- We can observe here both this getter area and perimeter they are operating on the lenght and breadth here.. so it's proves that for a particular field we can have multiple getters even we can have multiple getters
  int get perimeter => 2 * (length + breadth);
}

void main() {
  Rectangle r = Rectangle(10, 20);

  print('Area = ${r.area}');
  print('Perimeter = ${r.perimeter}');
}

//***************************************************************** */
//-- Impact of performace for getter / setter or narmal methods

/*    
  - In here most of the programmer says that that we are from the another background means we don't know the dart and we are comfortable 
  with just defining the normal methods let's say get data and set data and so on .. 
  So what is the impact of that one on the performace - There is no impact on performance means it will have the same performace if we're using the getters and setters 
  suggested by the dart  or if you don't like that one if you want to go with whatever knowledge or whatever concept that you feel comfortable with 
  that is with your traditional methods to define getters and setters so there is no problem of course for the perforamce point of view 
 */

//***************************************************************** */
//-- Now finally let's talk about do's and don'ts in the getters and setters


/*
class Student {     // We've class called Student that containes public field called name
  String name;

  Student(this.name);

  String get studentName =>
      name; //-- And over this name we've getter and setter .. --
  // In here we simply returning the value of name and using the setter simply assigning the valid name-
  // -means we in here not doing any calculation based operations just simply gettings and setting the values..

  set studentName(String value) => name = value;
}
*/

//->
/*  So this type of class or this type of getters and setters are not recommended this is because we've public field it can 
    be accessed means we can modify or we can even access the value so as your task is just to get and set the normal value 
    so don't use this kind of getters and setters from above line no.. 328 to 340 - just delete it.. 
  */

//******************************************************************* */
//-- Now finally let's talk about do's and don'ts in the getters and setters 
//-- Let's look an second exmaple.. 

class Student {     //--  We've class called Student that containes private field called name

  String _name;   //-- Just to access this field we've getter and to modify the field we've setter called name again this type of getter and setter are not at all recommended-
                //-- -This is because we just assinging the value in setter and we just reading the value indicator so if we've private field- 
                //-- -We feel that it's private field and it's getting secured but you know getters and setters they're loosing a security of this-
                //-- -particular private field there is no impact having this one as a private so that why this type of getters and setters are not recommended- 
                //-- -if you doing some calculation and then we've some getters and setters - then it's completely fine-
                //-- -but if you have only the normal setting and getting of values then it's not at all recommneded .. 

  Student(this._name);

  String get name => _name;   //-- 

  set name(String value) => _name = value;
}

//-- What are the situation where this getters and setters are recommended 
//--  so it's recommneded that if we  have the getters and setters to perform some validation for input then happily we can write the getters and setters 
//-- When we want to make our field that is the private field read only go ahead with the getters 
//-- Then if we want to perform some calculation based values or some calculation base operations then simply we can go with getters and setters that completly fine.. 
//-- AND FINALLY IF YOU WANT TO MAKE YOUR CODE TO BE CLEAR MUCH MORE SIMPLE TO PERFORM THE OPERATIONS THEN IN THAT CASE ALSO WE CAN DEFINE THE GETTERS AND SETTERS 