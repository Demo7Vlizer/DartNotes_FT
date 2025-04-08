//-- List methods & properties | Learning methods of List class

//-- Different Properties that list class support..

//-----------------------------------------------------------------------------------------------
//-- Properties of List Class
//-- Length, first, last, isEmpty, isNotEmpty, reversed

// void main() {
//   var animals = ['Cat', 'Dog', 'Tiger', 'Rat'];

//   print('length: ${animals.length}');                //  length: 4
//   print('first element: ${animals.first}');            //  first element: Cat
//   print('last element: ${animals.last}');           //  last element: Rat
//   print('is list empty: ${animals.isEmpty}');         //  is list empty: false
//   print('is list not empty: ${animals.isNotEmpty}');   // is list not empty: true

//   // var reversedList = animals.reversed;                // Reversed List: (Rat, Tiger, Dog, Cat)  .../ It'll print like this.. \

//   var reversedList = animals.reversed.toList();     //-- //-- Reversed List: [Rat, Tiger, Dog, Cat]  .../ It'll print like this.. \

//   print('Reversed List: $reversedList');           //-- Reversed List: [Rat, Tiger, Dog, Cat]
// }
//-----------------------------------------------------------------------------------------------
//-- List class support view set of methods.. - most frequenlty.. used..
//-- add & insert

// void main() {
//   var animals = ['Cat', 'Dog', 'Tiger'];

//   animals.add('Monkey');
//   print(animals); //-- [Cat, Dog, Tiger, Monkey]

//   animals.insert(2, 'Horse');
//   print(animals); //-- [Cat, Dog, Horse, Tiger, Monkey]
// }

//************************************************************************** */
//-- addAll(), insertAll()

// void main() {
//   var list1 = ['Cat', 'Dog', 'Tiger'];

//   var list2 = ['Lion', 'Money'];
//   list2.addAll(list1);

//   var list3 = ['Rat', 'Frog', 'Goat'];
//   list3.insertAll(1, list1);

//   print('list1: ${list1}'); //  list1: [Cat, Dog, Tiger]

//   print('list2: ${list2}'); //  list2: [Lion, Money, Cat, Dog, Tiger]

//   print('list3: ${list3}'); //   list3: [Rat, Cat, Dog, Tiger, Frog, Goat]
// }

//******************************************************************************* */
//-- Various methods of removing the elements of the list..
//-- removeAt(),    remove(),    removeLast(),    clear()

// void main() {
//   List fruits = ['Mango', 'Apple', 'Lemon', 'Orange', 'Kiwi'];

//   fruits.removeAt(1);
//   print('fruits: $fruits'); //   fruits: [Mango, Lemon, Orange, Kiwi]

//   fruits.remove('Orange');
//   print('fruits: $fruits'); //  fruits: [Mango, Lemon, Kiwi]

//   fruits.removeLast();
//   print('fruits: $fruits'); //  fruits: [Mango, Lemon]

//   fruits.clear();
//   print('fruits: $fruits'); //  fruits: []
// }

//******************************************************************************* */
//-- removeRange()

// void main() {
//   List fruits = ['Mango', 'Apple', 'Lemon', 'Orange', 'Kiwi'];

//   fruits.removeRange(
//       1, 4); // it'll remove from 1 index to 3th index.. - Apple to Orange..

//   print('fruits: $fruits'); //  fruits: [Mango, Kiwi]
// }

//******************************************************************************* */
//-- removeWhere()

// void main() {
//   List fruits = ['Mango', 'Apple', 'Lemon', 'Orange', 'Kiwi'];

//   fruits.removeWhere((fruit) {
//     return fruit.contains(
//         'o'); // -- remove all the elements which contains o -> Lemon and Orange contains -> o
//   });

//   print('fruits: $fruits'); //   fruits: [Apple, Orange, Kiwi]
// }

// //********************************* */
// void main() {
//   List fruits = ['Mango', 'Apple', 'Lemon', 'Orange', 'Kiwi'];

//   fruits.removeWhere((fruit) {
//     if (fruit.contains('o') || fruit.contains('O'))
//       return true; // remove all the which contains small o or capital O ..
//     return false;
//   });

//   print('fruits: $fruits'); //   fruits: [Apple, Kiwi]
// }

//******************************************************************************* */
// retianWhere()

// void main() {
//   List fruits = ['Mango', 'Apple', 'Lemon', 'Orange', 'Kiwi'];

//   fruits.retainWhere((fruit) {
//     return fruit.contains(
//         'a'); //-- remove all the elements which didn't contains small a letter
//   });

//   print('fruits: ${fruits}'); //   fruits: [Mango, Orange]
// }

//******************************************************************************* */
//-- indexOf(),       lastIndexof()

// void main() {
//   var items = [10, 20, 30, 20, 40, 50, 20, 60, 70];

//   print('index of 20 : ${items.indexOf(20)}'); //  index of 20 : 1

//   print('last index of 20 : ${items.lastIndexOf(20)}'); //  last index of 20 : 6
// }

//******************************************************************************* */
//-- sort()

// void main() {
//   var items = [9, 11, 3, 46, 92, 8, 12, 4, 25, 12];

//   items.sort(); //-- by this we've ordered items in ascending order..
//   print('items: $items'); //  items: [3, 4, 8, 9, 11, 12, 12, 25, 46, 92]
// }

//*************************************
// void main() {
//   var items = [9, 11, 3, 46, 92, 8, 12, 4, 25, 12];

//   items.sort();
//   var reversedList =
//       items.reversed; //-- Now we get all the elements in descending.. orders..

//   print(
//       'reversedList: $reversedList'); //-- reversedList: (92, 46, 25, 12, 12, 11, 9, 8, 4, 3)
// }
//*************************************

// void main() {
//   var items = [9, 11, 3, 46, 92, 8, 12, 4, 25, 12];

//   items.sort((left, right) {
//     if (left < right) return 1;
//     return 0;
//   });

//   print('items: $items'); //   items: [92, 46, 25, 12, 12, 11, 9, 8, 4, 3]
// }

//*************************************
// class Person {
//   String name;
//   int age;

//   Person(this.name, this.age);

//   @override
//   String toString() => '$name($age)';
// }

// void main() {
//   var personList = [
//     Person('Sam', 21),
//     Person('John', 34),
//     Person('Alex', 18),
//     Person('Mark', 36),
//     Person('James', 25)
//   ];

//   personList.sort((left, right) {
//     if (left.age > right.age) return 1; // this will give you ascending order
//     // if (left.age < right.age) return 1;         // and this will give you descending order..
//     return 0;
//   });

//   // personList.sort((left, right) {          //  we getting the output..  sorted person based on their names  in ascending order..
//   //   return left.name.compareTo(right.name);
//   // });

//   print(personList); //   [Alex(18), Sam(21), James(25), John(34), Mark(36)]
// }

//******************************************************************************* */
//-- suffle()

// void main() {
//   var items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

//   items.shuffle();       // Wheneve we run the command.. it'll shuffiled or arranged in different ways..

//   print('items: $items');   //  items: [4, 7, 9, 1, 6, 5, 8, 2, 10, 3]
// }

//*******************************************************************************
//-- sublist()

// void main() {
//   var items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

//   var smallList = items.sublist(0,
//       5); // we're just extract the 0 index to 4th index.. in our differnt list.. of items..

//   print('smallList: $smallList'); //  smallList: [1, 2, 3, 4, 5]
// }

//*******************************************************************************
//-- where()

// void main() {
//   List fruits = ['Mango', 'Apple', 'Lemon', 'Orange', 'Kiwi'];

//   List customList = fruits.where((fruit) {
//     //-- we extracted all the elements which contains small n in our customList..
//     return fruit.contains('n');
//   }).toList();

//   print(customList); //  [Mango, Lemon, Orange]
// }
//******************************************************
//-- where()

// class Employee {
//   String name;
//   String post;

//   Employee(this.name, this.post);

//   @override
//   String toString() => '$name($post)';
// }

// void main() {
//   var employeeList = [
//     Employee('Sam', 'Clerk'),
//     Employee('Mark', 'Manager'),
//     Employee('Alex', 'Programmer'),
//     Employee('James', 'Manager'),
//     Employee('John', 'Clerk'),
//   ];

//   var managerList = employeeList.where((employee) {
//     // we extracted out which is the employee is the post of Manager..
//     if (employee.post == 'Manager') return true;
//     return false;
//   }).toList();

//   print(managerList); //   [Mark(Manager), James(Manager)]
// }

//****************************************************************************************
//-- whereType()

// void main() {
//   var list = [10, 'Sam', 2.5, 'Jack', 45, 7.3, 'Mark'];

//   var myList = list.whereType<
//       String>(); //-- it'll extract all the elements from the list.. which belongs to the string type..

//   print(myList); //   (Sam, Jack, Mark)
// }

//****************************************************************************************
//-- map()

// void main() {
//   List fruits = ['Mango', 'Apple', 'Lemon'];

//   var newFruits = fruits.map((fruit) {
//     return fruit.toUpperCase();
//   }).toList();

//   print(newFruits); //  [MANGO, APPLE, LEMON]
// }

//****************************************************************************************
//-- reduce()

// void main() {
//   var list = [10, 20, 30, 40];

//   var sum = list.reduce((value, nextValue) {
//     return value + nextValue;
//   });

//   print(sum); //  100
// }

//****************************************************************************************
//-- fold()

// void main() {
//   var list = [10, 20, 30, 40];

//   var sum = list.fold(0, (int? prevValue, int element) {
//     return prevValue! + element;
//   });

//   print(sum); //  100
// }

//****************************************************************************************
//-- Conversion
//-- toList()
//-- toSet()
//-- asMap()

// void main() {
//   var list = [10, 20, 30, 20, 40];

//   List myList = list.toList();
//   print('myList = $myList'); //  myList = [10, 20, 30, 20, 40]

//   Set mySet = list.toSet();
//   print(
//       'mySet = $mySet'); //  mySet = {10, 20, 30, 40}   :- it won't allowed dublicate value.

//   Map myMap = list.asMap();
//   print(
//       'myMap = $myMap'); //  myMap = {0: 10, 1: 20, 2: 30, 3: 20, 4: 40}    :- We get in key and value pair..
// }

//****************************************************************************************
//-- every()
//-- any()

// void main() {
//   List fruits = [
//     'Mango',
//     'Pineapple',
//     'Lemon',
//     'Orange',
//     'Banana',
//   ];

//   bool myCondition = fruits.every((fruit) {    //-- if all the fruits having contains small letter n then it'll give me true or false..
//     return fruit.contains('n');
//   });

//   print('myCondition = $myCondition');        //  myCondition = true
// }
//**********************************
//-- any()
void main() {
  List fruits = [
    'Mango',
    'Pineapple',
    'Lemon',
    'Orange',
    'Banana',
  ];

  bool myCondition = fruits.any((fruit) {    //-- if anyone fruits having contains small letter o then it'll give me true or false..
    return fruit.contains('o');
  });

  print('myCondition = $myCondition');        //  myCondition = true
}
