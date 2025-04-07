// -- Features of List in dart | Characteristics of List |

//-- One
// ------- Use of if and for while creating list..

// void main() {
//   var items = [
//     10,
//     20,
//     if (10 > 5)
//       30, // When this condition is true.. then only that 30  will add in inside the list..
//     for (int i = 1; i <= 5; i++)
//       i, // The next element we're constructing from 1 to 5 we'll add inside the list..
//   ];

//   print(items); //   [10, 20, 30, 1, 2, 3, 4, 5]
// }

//----------------------------------------------------------------------
//-- Second
// --------- Spread operator (...) in List creation..

// void main() {
//   var list1 = [10, 20, 30];

//   var list2 = [15, 25, 35, ...list1];

//   var list3 = [100, 200, ...list1, ...list2];

//   print('list1: $list1');     //  list1: [10, 20, 30]
//   print('list2: $list2');    //  list2: [15, 25, 35, 10, 20, 30]
//   print('list3: $list3');    // list3: [100, 200, 10, 20, 30, 15, 25, 35, 10, 20, 30]
// }
//----------------------------------------------------------------------
//-- Third
//---------- RangeError

// void main() {
//   List animals = ['Tiger', 'Dog', 'Rat', 'Cat'];

//   // print(animals[5]);  //-- this will throw error  //-- because we're tyring to accessing from 5th index but this is not in our List..

//   print(animals.elementAt(
//       4)); //-- this will throw error  //-- because we're tyring to accessing from 5th index but this is not in our List..
// }
//----------------------------------------------------------------------
//-- Fourth
// ---------- No modification using
// ---------- for in & forEach loop

// void main() {
//   var items = [10, 20, 30, 40, 50];

//   for (var item in items) {
//     item = item + 1;
//     print(item); // -- line wise print in column : 11, 21, 31, 41, 51
//   }
//   print('item: $items'); // -- item: [10, 20, 30, 40, 50]

//   items.forEach((item) {
//     item = item + 5;
//     print(item); // -- line wise print in column : 15, 25, 35, 45, 55
//   });
//   print('items: $items'); // --  items: [10, 20, 30, 40, 50]
// }
//----------------------------------------------------------------------
//-- Fifth
//---------- List is abstract class...

// void main() {
//   List items = List.filled(5, 0);

//   print(items);
// }
//----------------------------------------------------------------------
//-- Sixth
//---------- Matric or Multi-dimensional List..

// void main() {
//   List<List<int>> matrix = [
//     [19, 12, 34],
//     [15, 25, 11],
//     [48, 72, 52],
//   ];

//   for (int i = 0; i < matrix.length; i++) {
//     print('Row $i');

//     for (int j = 0; j < matrix[i].length; j++) {
//       print(matrix[i][j]);
//     }
//   }
// }
//----------------------------------------------------------------------\
//-- Seventh
//------------ Default value of elements is null..

void main() {
  var list = [];
  list.length = 5;

  print(list);            //   [null, null, null, null, null]
}
