//- Sorting Set in Dart | How to sort Set in Dart

//---------------------------------------------------
//- First
//--------- Convert to List & apply sort()

// void main() {
//   Set names = {
//     'Mark',
//     'Alex',
//     'John',
//     'Sam',
//     'James',
//   };

//   List nameList = names.toList();

//   nameList.sort();

//   print('nameList: $nameList');
// }
//---------------------------------------------------------------
//- Second
//--------- Using SplayTreeSet.from()

// import 'dart:collection';

// void main() {
//   Set names = {
//     'Mark',
//     'Alex',
//     'John',
//     'Sam',
//     'James',
//   };

//   SplayTreeSet sortedNames = SplayTreeSet.from(names); //- SplayTestSet : this will arrange in asscending order..
//   sortedNames.add('Dennis');

//   print('sortedNames: $sortedNames'); //-- sortedNames: {Alex, Dennis, James, John, Mark, Sam}
// }
//********************************************** */
//-- In asscending order..

// import 'dart:collection';

// void main() {
//   Set names = {
//     'Mark',
//     'Alex',
//     'John',
//     'Sam',
//     'James',
//   };

//   SplayTreeSet sortedNames =SplayTreeSet.from(names, (leftElement, rightElement) {
//     return leftElement.compareTo(rightElement);
//   });   //- SplayTestSet : this will arrange in asscending order..
//   // sortedNames.add('Dennis');

//   print('sortedNames: $sortedNames'); //-- sortedNames: {Alex, Dennis, James, John, Mark, Sam}
// }

//********************************************** */
//-- In desscending

// import 'dart:collection';

// void main() {
//   Set names = {
//     'Mark',
//     'Alex',
//     'John',
//     'Sam',
//     'James',
//   };

//   SplayTreeSet sortedNames =SplayTreeSet.from(names, (leftElement, rightElement) {
//     return rightElement.compareTo(leftElement);
//   });   //- SplayTestSet : this will arrange in desscending order..   //= Just switch the name rightElement.compareTo(leftElement)
//   sortedNames.add('Dennis');

//   print('sortedNames: $sortedNames'); //-- sortedNames: {Sam, Mark, John, James, Dennis, Alex}
// }

//---------------------------------------------------------------
//-- Third Thechnique..
//-- Using SplayTreeSet object..

import 'dart:collection';

void main(){
  SplayTreeSet names = SplayTreeSet();

  names.add('Sam');
  names.add('Mark');
  names.add('Dennis');
  names.add('Alex');

  print('names: $names');           //= names: {Alex, Dennis, Mark, Sam}
}