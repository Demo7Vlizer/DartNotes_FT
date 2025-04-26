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

// https://youtu.be/BPmqmaLY2_o?list=PLeKQz1VjpjFqqXLvQ8rTnYxZcUqEGA0dm&t=679