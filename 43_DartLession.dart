//-- Interface questions in Dart | Dart Interface questions


//------------------------------------------------------------------------

// 1) Why interface method needs to 
// be override

/**
  Whenever we extends the class ... for example we've a class A that contains methods test so inside the class B as because 
  extending class A for B it's not compulsory to override the methods of class A but another hand instead of writing extend 
  if we change into say implements, now for the class B it's compulsory to override the method void test of this class that 
  the interface A .. When we extend a class it's not compulsory for us to overrride the method and if we want to make that
  class as interface that is when we write implements it's compulsory for that class to override the method now reason here
  is when we extend the class what happens the complete definition of method comes from superclass inside the subclass but 
  when we write the implement so instead of getting the complete definition of method it means in this case when class B 
  implements A so instead of getting complete defintion of this void test method inside a class B only the abstract signature 
  of method is inherited inside the class it means only this void test along with this abstract signature that is making this 
  major abstract will come inside the class B and as we know this class B is not the abstract class means it's a concrete class
  so concrete class cannot have the abstract method declaration that's the reason for this class B it's compulsory to overwrite 
  the methods of interface so we can imagine that interface that is implementing interface it is simply extending the abstract class 
  containing the abstract methods  
 */


/*
// interface
class A{
    void test(){
        print('test() of interface A');
    }
}

// class B extends A{
class B implements A{

}
*/

// -----------------------------------------------------------------------

//--2) How it is possible to implement multiple interface ...


