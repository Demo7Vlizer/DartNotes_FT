//--Type inference & type Safety in dart | Static & runtime checks in Dart

/* 

## Type inference.. 
### Type are mandatory in dart.. 
```dart
int age = 21;
double price = 10.5;
String name = 'Siddh';  
(this type of declaration called... Annotation..)
```
```dart
var age = 21;
var price = 10.5;
dynamic name = 'Siddhi';
( this is called Type inference..   )
```
- it confirms the type of variable based on values we assigned..
- Managed by the Dart's static analyzer.. 
```dart
var age = 21;
print(age.runtimeType);     // int

var price = 10.5;
print(price.runtimeType);    // double

var items = [10,20,30];
print(items.runtimeType);     // List<int>

var x;
print(x.runtimeType);        // null, Null
```
- .........................................................
### Type Safety
- The Dart is type safe language
- It ensures that a variables value always matches the variables static type
```dart
int x;
x = 10;        // ... Ok
x = 10.5      //-- error
x = 'Abc';   //-- error
```
- Achieved with combination of static type checking & runtime checks..

- ..............................................

### Static type checking  - this type of checking.. also called sound typing or  sound type systen
- Ensures type safety during compile time
- Shows compile time error
- Performed by Dart's static analyzer.. 

### Runtime Checks.. 
- Ensures type safety during runtime..
-  Gives Exception at runtime
- Performed by Dart's runtime system.. 


*/