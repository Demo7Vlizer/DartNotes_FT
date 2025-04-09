//-- Dart Set Methods & Properties
//-- Different propeties and Methods that set class support..

//--------------------------------------------------------------------------
//-- Properties of Set class
//-- Length, first, last,
//-- isEmpty, isNotEmpty..

// void main() {
//   Set fruits = {'Mango', 'Apple', 'Cherry', 'Orange'};

//   print('length: ${fruits.length}');             //  length: 4
//   print('first element: ${fruits.first}');       //  first element: Mango
//   print('last element: ${fruits.last}');       //  last element: Orange
//   print('is empty: ${fruits.isEmpty}');         //  is empty: false
//   print('is not empty: ${fruits.isNotEmpty}');  //  is not empty: true
// }
//--------------------------------------------------------------------------
//-- Methods of Set class..
//--  adding elements in Set
//-- add(),     addAll()

// void main() {
//   Set fruits = {'Mango', 'Apple', 'Cherry'};

//   fruits.add('Orange');

//   Set myFruits = {'Lemon', 'Grapes'};

//   myFruits.addAll(fruits);

//   print('fruits: $fruits'); //-- fruits: {Mango, Apple, Cherry, Orange}
//   print(
//       'myFruits: $myFruits'); //-- myFruits: {Lemon, Grapes, Mango, Apple, Cherry, Orange}
// }
//*************************************************************************
//-- removing elements from Set
//-- remove(),  removeAll(),  clear()

// void main() {
//   Set fruits = {
//     'Mango',
//     'Lemon',
//     'Apple',
//     'Cherry',
//     'Grapes',
//   };

//   print(
//       'original fruits: $fruits'); //  original fruits: {Mango, Lemon, Apple, Cherry, Grapes}

//   Set myFruits = {'Lemon', 'Grapes'};

//   fruits.remove('Apple');
//   print('fruits: $fruits'); //  fruits: {Mango, Lemon, Cherry, Grapes}

//   fruits.removeAll(myFruits);
//   print('fruits: $fruits'); //  fruits: {Mango, Cherry}

//   fruits.clear();
//   print('fruits: $fruits'); //   fruits: {}
// }
//*************************************************************************
//-- removing elements from Set
//-- removeWhere(),    retainWhere(),      retainAll()

// void main() {
//   Set names = {'Sam', 'John', 'Mark', 'Alex', 'James'};

//   // names.removeWhere((name) {
//   //   return name.contains('a');       // remove all the elements that contains small a letter
//   // });
//   // print('names: $names');           // names: {John, Alex}
//   //-----------------------------

//   names.retainWhere((name) {
//     return name.contains('a');       // remove all the elements that does not contains small a letter which contains a retain them..
//   });
//   print('names: $names');           // names: {Sam, Mark, James}
//   //----------------------------

//   // Set set1 = {'Alex', 'Sam'};     //  In here remove all the elements inside from the names Set.. accept those are in set1 retain them..
//   // names.retainAll(set1);

//   // print('names: $names');          //  names: {Sam, Alex}
// }

//*************************************************************************
//-- elementAt()

// void main() {
//   Set names = {'Sam', 'John', 'Mark', 'Alex', 'James'};

//   print(names.elementAt(0)); // Sam
//   print(names.elementAt(1)); //  John
// }

//*************************************************************************
//-- contains(),   containsAll(),    lookup()

// void main() {
//   Set fruits = {'Mango', 'Lemon', 'Apple', 'Cherry', 'Grapes'};

//   Set myFruits = {'Lemon', 'Grapes'};

//   bool hasApple = fruits.contains(
//       'Apple'); //-- we're checking.. that Apple contains inside the Set of.. fruits or not.. if it's there then it'll give in bool value.. true or false.
//   print('hasApple: $hasApple'); //  hasApple: true

//   bool hasMyfruits = fruits.containsAll(
//       myFruits); //-- //-- we're checking.. that myFruits all elements are contains inside the Set of.. fruits or not.. if it's there then it'll give in bool value.. true or false.
//   print('hasMyFruits: $hasMyfruits'); //  hasMyFruits: true

//   var value = fruits.lookup(
//       'Cherry'); //-- watch Cherry.. is there in fruits Set if not there it's showing.. null... there it's showing.. element name ..
//   print('value: $value'); //  value: Cherry
// }

//*************************************************************************
//-- Where()

// void main() {
//   Set names = {'Sam', 'John', 'Mark', 'Alex', 'James'};

//   Set myNames = names.where((name) {
//     //-- in here wherever contains a small letter it'll store inside the.. myNames..
//     return name.contains('a');
//   }).toSet(); //-- we need to specify the toSet() either it'll show error, or another way to use var...

//   print('myNames: $myNames'); //-- myNames: {Sam, Mark, James}
// }

//*************************************************************************
//-- whereType()
//-- WhereType method actually use to obtained the Set which specific type of values..

// void main() {
//   var set1 = {10, 'Abc', 3.5, 'Xyz', 32, 5.8};

//   var set2 = set1
//       .whereType<String>()
//       .toSet(); // by this methods it'll give us .. String type of data..
//   var set3 = set1
//       .whereType<int>()
//       .toSet(); // by this methods it'll give us .. String int of data..

//   print('set2: $set2'); //-- set2: {Abc, Xyz}
//   print('set3: $set3'); //-- set3: {10, 32}
// }

//*************************************************************************
//-- map()

// void main() {
//   Set names = {'Sam', 'John', 'Mark', 'Alex'};

//   Set upperCaseNames = names.map((name) {
//     return name.toUpperCase();
//   }).toSet();

//   print(
//       'upperCaseNames: $upperCaseNames'); //   upperCaseNames: {SAM, JOHN, MARK, ALEX}

//   print(
//       'names: $names'); //  names: {Sam, John, Mark, Alex}    /= actual names values are not unmodified.. as it is same..
// }

//*************************************************************************
//-- union(), intersection(), difference()

// void main() {
//   Set fruits1 = {'Mango', 'Lemon', 'Apple', 'Cherry'};
//   Set fruits2 = {'Apple', 'Kiwi', 'Mango', 'Grapes'};

// Set fruits3 = fruits1.union(fruits2);      //-- union methods is used to obtained.. union that is addition of two different set values..

// print('fruits: $fruits3');              //--  fruits: {Mango, Lemon, Apple, Cherry, Kiwi, Grapes}   //= the dublicate item are not added inside the fruits3

//--------------------------------------------

// Set fruits3 = fruits1.intersection(fruits2); //-- it means all the elements which are commonly present in fruits1 and fruits2 they will be stored in fruits3

// print('frutis3: $fruits3'); //  frutis3: {Mango, Apple}

//--------------------------------------------

//   Set fruits3 = fruits1.difference(
//       fruits2); //-- now it gives us .. all the values of fruits1 which are not present in fruits2
//   Set fruits4 = fruits2.difference(
//       fruits1); //-- now it gives us .. all the values of fruits2 which are not present in fruits1

//   print('fruits3: $fruits3'); //  fruits3: {Lemon, Cherry}
//   print('fruits4: $fruits4'); //  fruits3: {Kiwi, Grapes}
// }

//*************************************************************************
//-- reduce(),      fold()

// void main() {
//   Set<int> mySet = {10, 20, 30, 40};

// var sum = mySet.reduce((value, nextValue) {
//   return value + nextValue;
// });

// print(sum);           //  100

//--------------------------------------------

//   var sum = mySet.fold(5, (int? value, nextValue) {
//     return value! + nextValue;
//   });

//   print(sum); //  105
// }

//*************************************************************************
//-- toList()
//-- toSet()

// void main() {
//   Iterable values = {10, 20, 30, 40};

//   Set mySet = values.toSet();

//   List myList = values.toList();

//   print('mySet: $mySet'); //  mySet: {10, 20, 30, 40}
//   print('myList: $myList'); //  myList: [10, 20, 30, 40]
// }

//*************************************************************************
//-- every(),   any()

void main() {
  Set fruits = {
    'Mango',
    'Pineapple',
    'Lemon',
    'Orange',
    'Banana',
  };

  // bool myCondition = fruits.every((fruit) {    // if each and every element contains small n then it'll give us in bool value.. true or false
  //   return fruit.contains('n');  
  // });

  // print('myCondition = $myCondition');      //   myCondition = true

  //--------------------------------------------

   bool myCondition = fruits.any((fruit) {    // in here atleast one fruits element should contains o small letter then it'll gives us true or false.. 
    return fruit.contains('o');  
  });

  print('myCondition = $myCondition');      //   myCondition = true
}
