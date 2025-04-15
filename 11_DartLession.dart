//= Map in Dart | What is Map in Dart & Flutter

//= What is Map
//= Creating Map
//= Accesssing the Map elements
//= Iterating Map
//= Properties of Map
//= Methods of Map

//----------------------------------------------------------------
//= What is Map
/* 
//----------------------------------//

**📚 Concept: Map in Programming**

1. **What is a Map?**
   - A Map is a data structure that stores elements in key-value pairs.
   - Example: `{key: value}`, e.g., `{1: 'apple', 2: 'banana'}`.

2. **Key Features:**
   - Keys must be **unique**.
   - Values can be **any type** as per requirement (string, integer, etc.).
   - Access elements directly using keys.

3. **Implementation Types in Java:**
   - **HashMap:** Fast access; unordered.
   - **LinkedHashMap:** Ordered based on insertion.
   - **SplayTreeMap:** Maintains a sorted order.

4. **Why Use a Map?**
   - Efficient data lookup.
   - Stores relationships (key → value).
------------------------------------------------
 */

//----------------------------------------------------------------
//-- Creating empty maps..

// void main() {
//   var map1 = {};
//   Map map2 = {};
//   Map map3 = <String, int>{};        //-- this is the good practice for programmer to specify the data types..
//   Map map4 = Map();
//   Map map5 = Map.identity();

//   print('map1 = $map1'); //  map1 = {}
//   print('map2 = $map2'); //  map2 = {}
//   print('map3 = $map3'); //  map3 = {}
//   print('map4 = $map4'); //  map4 = {}
//   print('map5 = $map5'); //  map5 = {}
// }

//----------------------------------------------------------------
//-- Creating Map with values..

// void main() {
//   Map employee = {
//     'name': 'Sam',
//     'age': 25,
//     'salary': 30000,
//     'post': 'Software Developer',
//   };

//   print('employee = $employee'); //   employee = {name: Sam, age: 25, salary: 30000, post: Software Developer}
// }

//----------------------------------------------------------------
//-- Create Map from another Map
// Map.from(),       Map.of(),           Map.unmodifiable()

// void main() {
//   Map person1 = {
//     'name': 'Alex',
//     'age': 21,
//     'status': 'single',
//   };

//   Map person2 = Map.from(
//       person1); // from this .. that will be constructed by using all the values from the person1 and this one is modifiable.. and in this there is not any static type checking done by this..
//   Map person3 = Map.of(
//       person1); // from this also.. that that will be constructed object all the values from the person 1 and this one is modifiable..  and in this there is strictly static type checking done by this..

//   Map person4 = Map.unmodifiable(
//       person1); // from this also.. that that will be constructed object all the values from the person 1 but in this case we can't modify.. and this also not checing any type of constructor..

//   print(person1); //  {name: Alex, age: 21, status: single}
//   print(person2); //  {name: Alex, age: 21, status: single}
//   print(person3); //  {name: Alex, age: 21, status: single}
//   print(person4); //  {name: Alex, age: 21, status: single}
// }

//----------------------------------------------------------------
//-- Create Map from list or set

// void main() {
//   var list = [10, 20, 30, 40, 20, 50];       //-- the map don't take dublicate.. key & value pair..

//   Map map = Map.fromIterable(list);

//   print(map);     //  {10: 10, 20: 20, 30: 30, 40: 40, 50: 50}

// }

//----------------------------------------------------------------
//-- Accessing Map elements..

void main() {
  Map person = {};

  person['name'] = 'Sam';
  person['age'] = 25;
  person['gender'] = 'Male';

  print(person['name']);
  print(person['age']);
  print(person['gender']);
}

// https://youtu.be/lQn8OKnV_7Q?list=PLeKQz1VjpjFqqXLvQ8rTnYxZcUqEGA0dm&t=1071