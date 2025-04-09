//-- Set in Dart | Understanding the Dart Set Class

//-- What is Set..
//- Set is unordered collection of unique items..
//- Duplicate elements are not allowed..
//- No access to elements using index..
//- Value of elements can't be modified..
//- Set is predefined class..
//- LinkedHashSet is default implementation of set..

//--------------------------------------------------------------------------
//-- Creating empty set

// void main() {
//   Set set1 = {};

//   var set2 = <int>{};

//   // var set2 = <int, int>{};       //-- this is now a map..

//   var set = {}; //-- This is also now a map..

//   Set<String> set3 = <String>{};

//   var set4 = Set.identity();

//   print(set1.runtimeType); //  _Set<dynamic>
//   print(set2.runtimeType); // _Set<int>
//   print(set.runtimeType); //  _Map<dynamic, dynamic>
//   print(set3.runtimeType); //  _Set<String>
//   print(set4.runtimeType); //  CompactLinkedIdentityHashSet<dynamic>
// }

//--------------------------------------------------------------------------
//-- Creating set with initial values..

// void main() {
//   //
//   var names = {
//     'Mark',
//     'Alex',
//     'James',
//     10,
//     20
//   }; // this is actually a dynamic kind of set..

//   //
//   Set<int> items = {10, 20, 30, 20, 40};

//   print(names); //  {Mark, Alex, James, 10, 20}
//   print(items); //  {10, 20, 30, 40}
// }

//--------------------------------------------------------------------------
//-- Creating set from another set
//-- Set.from(), Set.of(), Set.unmodifiable()

// void main() {
//   var set1 = {10, 20, 30};

//   var set2 = Set.from(
//       set1); // it didn't have strong type check it'll throw error during runtime

//   var set3 = Set.of(
//       set1); // this is strong type check it'll show error in compile time.. if we use different data types.

//   var set4 = Set.unmodifiable(
//       set1); // in here we cannot add the new element and even remove the elements

//   print('set1 : $set1'); //  set1 : {10, 20, 30}
//   print('set2 : $set2'); //  set2 : {10, 20, 30}
//   print('set3 : $set3'); //  set3 : {10, 20, 30}
//   print('set4 : $set4'); //  set4 : {10, 20, 30}
// }

//--------------------------------------------------------------------------
//-- Accessing Set elements..

// void main() {
//   var animals = {'Dog', 'Cat', 'Lion', 'Monkey'};

//   // print(animals[0]);          // it'll show error by this method if we're trying to accessing the element..

// //-- Alternative way to Accessing the element..
//   print(animals.elementAt(0)); //  Dog
//   print(animals.elementAt(1)); //  Cat
//   print(animals.elementAt(2)); //  Lion
//   print(animals.elementAt(3)); //  Monkey
// }

//--------------------------------------------------------------------------
//-- Iterating Set..
//- for in,    forEach,  simple for

// void main() {
//   var animals = {'Dog', 'Cat', 'Lion', 'Monkey'};

//   //
//   for (var animal in animals) {
//     // print(animal);                   //-- Dog, Cat, Lion,  Monkey

//     animals.forEach((var animal) {
//       // print(animal);               //-- Dog, Cat, Lion, Monkey, Dog, Cat, Lion, Monkey, Dog, Cat, Lion, Monkey, Dog, Cat, Lion, Monkey
//     });

//     //
//     for (int i = 0; i < animals.length; i++) {
//       print(animals.elementAt(
//           i)); //-- Dog, Cat, Lion, Monkey, Dog, Cat, Lion, Monkey, Dog, Cat, Lion, Monkey, Dog, Cat, Lion, Monkey
//     }
//   }
// }
//--------------------------------------------------------------------------
//-- Immuntable (const) Set

// void main() {
//   // var fruits = const {'Mango', 'Cherry', 'Orange'};
//   const fruits = {
//     'Mango',
//     'Cherry',
//     'Orange'
//   }; // Now fruit object is constant.. as we cannot modify the fruit list..

//   fruits.add(
//       'Banana'); // We cannot add and remove elements inside the list.. because we use already const..
//   // It'll through error..
// }

//------------------------------------------------------------------------------------------
//-- 1
//-- Use of if and for in Set creation..

// void main() {
//   Set items = {
//     10,
//     20,
//     if (10 > 5)
//       30, //-- If 10 is greater than 5 then add 30 inside the items sets if not than don't add 30
//     for (int i = 1; i <= 5; i++)
//       i, //-- In here we add 1 to 5 inside items Set..
//   };

//   print('items: $items'); //   items: {10, 20, 30, 1, 2, 3, 4, 5}
// }

//************************************************************************* */
//-- 2
//-- Support spread operators (... and ...?)

// void main() {
//   var set1 = {1, 2, 3};

//   var set2 = {10, 20, ...set1};

//   print('set: $set1'); //-- set: {1, 2, 3}
//   print('set2: $set2'); //-- set2: {10, 20, 1, 2, 3}
// }

//************************************************************************* */
//-- 3
//-- RangeError Exception

// void main() {
//   var fruits = {'Mango', 'Cherry', 'Orange'};

//   print(fruits.elementAt(
//       3)); //--  We got runTime error because 3 element doesn't exist..
// }

//*************************************************************************
//-- 4
//-- No modification using
//-- for in & forEach loop

// void main() {
//   var items = {10, 20, 30, 40, 50}; //

//   for (var item in items) {
//     item = item + 1;
//     print(item); //  11, 21, 31, 41, 51
//   }
//   print(
//       'items: $items'); //   items: {10, 20, 30, 40, 50}         //- we cannot modify the value.. even in the loop.. after adding 55 still giving the result same as in the list items..

//   items.forEach((item) {
//     item = item + 5;
//     print(item); //   15, 25, 35, 45, 55
//   });
//   print(
//       'item: $items'); //  item: {10, 20, 30, 40, 50}    //- we cannot modify the value.. even in the loop.. after adding 55 still giving the result same as in the list items...
// }

//*************************************************************************
//-- 5
//-- Set is absract class..

// void main() {
//   Set items = Set();

//   items.add(10);
//   items.add(20);

//   print(items); //-- {10, 20}
//   print(items.runtimeType); //-- _Set<dynamic>
// }
//*************************************************************************
//-- 6
//-- No way to modify Set values..

void main() {
  Set items = {10, 20, 30, 40, 50, 60};

  // items[2] = 100;

  Set newItems = getModifiedSet(items, 2, 100);
  print(newItems);                                 //-- {10, 20, 100, 40, 50, 60}   //- In here we replace 2nd index with 100 but we actually creating another set in that set we store 100 instead 30
}

  Set getModifiedSet(Set items, int index, int newValue){ 
    Set modifiedSet = {};

    for(int i=0; i<items.length; i++){
      if(i == index)
      modifiedSet.add(newValue);
      else
      modifiedSet.add(items.elementAt(i));
    }
    return modifiedSet;
  }

