//-- List in Dart | Dart list tutorial |
//-- Topics to cover
//- What is list
//- Growable & fixed-length list
//- Creating the list
//- Accessing List elements
//- Iterating List
//- Immutable (const) List

//-----------------------------------------------------------------

//-- Growable & Fixed-Length List..  = is a kind of list  who size can grow and shrink as per the requirements..
//-- and fixed-lenght list.. is a kind of list.. i cannot add the element and even I cannot remove the element.. from the list..

// void main() {
//   var items = [];

//   items.add(10);
//   items.add(20);
//   items.add(30);
//   items.add(40);
//   items.add(50);

//   items.removeAt(2);

//   print(items);              //  [10,20,40,50]
// }

//...............................................................
// void main() {
//   var items = List.empty(  );      // afer this we cannot remove items in list.

//   items.add(10);
//   items.add(20);
//   items.add(30);
//   items.add(40);
//   items.add(50);

//   items.removeAt(2);

//   print(items);              //  Uncaught Error: Unsupported operation: add
// }
//...............................................................

// void main() {
//   var items = List.empty(
//       growable: true); // afer this we can remove  and add items in list.

//   items.add(10);
//   items.add(20);
//   items.add(30);
//   items.add(40);
//   items.add(50);

//   items.removeAt(2);

//   print(items); //  [10,20,40,50]
// }
//-----------------------------------------------------------------
//-- Creating list in dart.. in two ways..

// void main() {
//   //Using Literals
//   var list1 = [];

//   //Using empty() constructor
//   var list2 = List
//       .empty(); // it's a kind of fixed-length we cannot.. add or remove.. the elements from the list..

//   print('list1:$list1'); //  list1:[]
//   print('list2:$list2'); //  list2:[]
// }

//-----------------------------------------------------------------
// Creating list with initial values..
// void main() {
//   //Using var keywrd
//   var items = [10, 20, 30, 40, 50];

//   // Using  List class
//   List fruits = ['Apple', 'Orange', 'Cherry'];

//   //Different type of elements (var & List)
//   List values = ['Sam', 45, 6.9];

//   //Using generics (with specific type only)
//   List<String> animals = [
//     'Cat',
//     'Rat',
//     'Tiger',
//     'Lion'
//   ]; //-- if we add here different type of data types then we'll get error..

//   List<int> nums = [12, 5, 7, 2, 24];
// }
//-----------------------------------------------------------------
//-- Creating List with filled() constructor

// void main() {
//   var items = List.filled(5,
//       0); // 5 is basically how much item are there in our list.. and 0 is that only 0 elements will there in list..

//   // items.add(10);    // During runtime it'll throw error because In here we cannot add and remove element..

//   print(items); // [0, 0, 0, 0, 0]
// }

//............................................
//-- If we want to grow elements in filled() constructor..

// void main() {
//   var items = List.filled(5, 25, growable: true);

//   items.add(39);

//   print(items); // [25, 25, 25, 25, 25, 39]
// }

//-----------------------------------------------------------------
//-- Creating list with generate() constructor

// void main() {
//   var items = List.generate(
//       5,
//       (int index) =>
//           index *
//           index); // this is defined as like.. ( 0*0 = 0,  1*1=1,   2*2=4,   3*3=9,   4*4=16)

//   print(
//       items); //  [0, 1, 4, 9, 16]   //-- This is because of ..  0*0 = 0, 1*1=1, 2*2=4, 3*3=9, 4*4=16
// }
//-----------------------------------------------------------------
//-- Creating list from another list
// List.form()
// List.of()
// List.unmodifiable()

// void main() {
//   List list1 = ['Tiger', 'Dog', 'Rat', 'Cat'];

//   // List list2 = List.from(list1);     // in this contructor.. don't have static type checking..  you'll get runtime exception..
//   // List list2 = List.of(list1);         // this also do the same tast.. as like from but this will give error in compile time.. if you given any differnt type of data.. this has strong type checking..
//   List list2 = List.unmodifiable(
//       list1); // in here we can't modified - add or remove the elements from the list.. but in list1 we can..

//   print(
//       list2); // [Tigher, Dog, Rat, Cat];     //-- // This are the actually values which list to has obtained from the list 1
// }
//-----------------------------------------------------------------
//-- Accessing List elements..
//- Dart provides us two different option in order to accessing the individuall elements..

// void main() {
//   List fruits = ['Mango', 'Apple', 'Orange', 'Banana'];

//   //-- first one is..
//   print(fruits[0]);        // Mango
//   fruits[2] = 'Cherry';   // the second elements will replace with this .. Orange replace by Cherry..

//   //-- Second methods ..
//   print(fruits.elementAt(2));   // Cherry

//   print('fruits: $fruits');    // fruits: [Mango, Apple,Cherry, Banana]
// }
//-----------------------------------------------------------------
//-- Different ways of  Iterating List..
// Simple for loop | for in loop | forEach loop

// void main() {
//   List<String> animals = ['Tiger', 'Dog', 'Rat', 'Cat'];

//   //-- for loop
//   for (int i = 0; i < animals.length; i++) {
//     print(animals[i]); // it'll print line wise.. - Tiger, Dog, Rat, Cat
//   }

//   //-- for in loop
//   for (var animal in animals) {
//     print(animal); //  it'll print line wise.. - Tiger, Dog, Rat, Cat
//   }

//   //-- ForEach loop
//   animals.forEach((animals) {
//     // it'll print line wise.. - Tiger, Dog, Rat, Cat
//     print(animals);
//   });
// }
//-----------------------------------------------------------------
//-- Immutable (onst) List
//- This  also known as constant list is a kind of List in which it's not possible to modified.. the elements..
//- that is we cannot change the value of list elements.. even we cannot add the elements and we cannot remove the elements..

void main() {
  List fruits = const ['Mango', 'Apple', 'Oragen'];
// const List fruits = const ['Mango', 'Apple', 'Oragen'];   // if we add const then this also is not possible .. we'll get during compile error


  print(fruits.hashCode);     //  90568643      //-- this hashCode - Every time you run it, it will keep changing

  fruits = [10, 20];    // But We can assign another list in the fruits.. but this will create different object..  or that we created another list of objec.. we cannot modified or change that first list.. 
                        //-- If we add const in starting this is also not possible :\- const List fruits = const ['Mango', 'Apple', 'Oragen'];
                        //-- This will throwing error after adding const before List fruits.. also.. 

  print(fruits.hashCode);      //  311498929    //-- this hashCode - Every time you run it, it will keep changing

  // fruits[0] = [10, 20];                //--  and even I cannot modified.. it'll give exception..

  // fruits[2] = 'Cherry';    //-- We cannot perfrom this .. it'll throw error

  //fruits.add('Bananan');   //-- We cannot perfrom this .. it'll throw error
  //fuits.removeAt(0);      //-- We cannot perfrom this .. it'll throw error

  print(fruits); // [10, 20]
}
//-----------------------------------------------------------------
