// Null Safety in Dart & Flutter

/*
-----
### Title:
**Topics to Cover**

### Content:
1. **What is Null Safety**
2. **Advantage of Null Safety**
3. **Nullable & Non-Nullable Variables**
4. **late keyword**
-----
*/

//-------------------------------------------------------------------------------
//-- Null Safety
//- July 2020, Dart 2.12
//-- Make sure that null safety is only aplicable for type variable that is for int double String maybe your own type.. like object type or name or customer or student
//-- But when we have var or dynamic type of variable it can have null

/*
void main() { 
  int x;  
  print(x);       //-- It will showing compile time error
}
*/
//---------------------
/*
void main() {
  String x = null;  
  print(x);      
}
*/
//---------------------
/*
void main() {
  var x;
  print(x);     //  null 
}
*/
//---------------------
/*
void main() {
  dynamic x = null;
  print(x);   // null
}
*/

//-------------------------------------------------------------------------------
//-- What is the advantage of null Safety..

/*
void main() {
  var x; 

  //1
  if (x != null) {
    //x.dosomeThings();
  }

  //2
  try {
    //x.dosomeThings():
  } catch (error) {
    //
  }
}
*/

//-------------------------------------------------------------------------------
//-- Nullable & non-nullable variables

/*
void main() {
  int x;
  int? y;        
}
*/

//-------------------------------------
//-- nullable variables..

/*
void main() {
  int? x;
  List<int?> list1 = [10, 20, null];
  List? list2 = null;
}

void doSomething(int? y){
  //
}

String? getSomething(){
  //
}
*/

//-------------------------------------
/*
void doSomeThing(int y) {
  print(y);
}

void main() {
  int? x; //- this is nullable varibale..

  // doSomeThing(x);

//-- Three ways to handle this... 
  //1
  if (x != null) {
    doSomeThing(x);
  }

  //2
  doSomeThing(x ?? 0);

  //3
  doSomeThing(x!)
}
*/

//-------------------------------------------------------------------------------
//-- late keyword..

/*
class Person {
  String name;
  int age;

/*
  // constructor.. resolving error by this.. 
  Person(this.name, this.age);   // positional parameter.. 
*/

  //-- required .. resolve this error after adding curly braces.. 
  Person({required this.name, required this.age});   // positional parameter.. 

}
*/

//--  In different case of solution..
//-- As we're using  this late keyword that dart  compiler is giving some time or it is giving some chance that we can initialize the variable.. later on without using the constructor.. 
class Person {

  late String name;        // it's like lazy initializer or late initializer.. 
  late int age;

}
