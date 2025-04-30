//-- Method overriding in Dart | Polymorphism in Dart

// --------------------------------------------------------------------------------
// Method Overriding

/*------------------
class Clock {   //-- Here we've class called Clock it contains one methods called run
  //-- overidden method
  void run() {
    print('Clock is running');
  }
}

class DigitClock extends Clock { //-- Here we've class called DigitClock it contains same methods called run - so this type of process is known as the method overriding ..
  //-- overriding method
  @override //-- This is the overr writtnen notation...
  void run() {
    
    super.run();
    print('DigitClock is running');
  }
}

void main() {
  var ref = DigitClock();
  ref.run();   
  /*---- Print Out --  
    Clock is running
    DigitClock is running
-----------------------------*/
}
--------------------*/


// --------------------------------------------------------------------------------
//-- Polymorphism 
//-- Poly (Many)      Morph(Forms)
//-- Compile Time
//-- Run Time


class Clock {
  void run() {
    print('Clock is running');
  }
}

class DigitClock extends Clock {
  @override
  void run() {
    print('DigitClock is running');
  }
}

void main() {
  var ref = Clock();
  ref.run();             //  Clock is running

  ref = DigitClock();
  ref.run();            //  DigitClock is running
}

/*  
  The polymorphism which is achieved during run time is known as the runtime polymorphism it means what thinigs to dowhich methods 
  to call or what action to perform is not decided by the compilier rather it will be decided during runtime based on the situation
  or based on the values.. or based on the parameteres that object is having or the value that object is holding based on that one 
  the appropriate action or appropriate methods to be executed will be decided and that is simply known as the runtime polymorphism 
  -----------------------------------------------------------------------------

  We've two different classes Clock and DigitClock  in above we written so the Clock a class acts as the super class having a run method
  that prints clock is running and the DigitClock has again the same method and which is actually the overriden method and that prints the message  
  DigitClock is running.. so we have super class called Clock and we've class called DigitClock and we'e implemented a concept called method 
  overriding which we have seen right now.. not the most important thing in this program is a main method we can observe in the main
  in line no. 56 we've a ref which is referring to Clock object that is object of superclass and we have invoked the method on that reference 
  then in line no.  59 we've the same reference but now it is referring to the object of DigitClock that is the object of subClass and again we've 
  invoked the same method called run on the reference we can observe here line no. 57 and line no. 60 they are the same line even when we run this
  means even this line are same we can observe  .. we're not getting the same result we getting different result so this bascally known as the 
  polymorphism as this is happening run time it is the run time polymorphism 
  -------------------------------------------------------------------------------
  Explanation of How it's run time polymorphism 
  - So as we know when we have overwritten method then means when we have a method overrriding then which method to call means weather to method
  from superclass or subclass  it depends on what object we've so we can observe here as we have line no. 56 ref is referring to object of super class 
  that why while calling a run methods it's involing superClass run method and we're getting output called  Clock is running 
  on Another hand in line no. 59 the same reference is now referring to the object of subclass  now at this time when we calling run method it is calling the 
  method of run that is method run of the subClass and not the superClass .. and hence we're getting the output is called DigitClock is running 
  So which method to call is not decided during compile time rather it is decided during run time so this is called as the runtime polymorphism  Because 
  reference can hold a different type of object means as it is the reference it can hold the object .. of superClass it can even hold the object of subClass 
  but which method to call means which run to call we can obvoiusly here have the same run in line no. 57 and same in line no. 60 but which one to call is decided not during 
  compile time it is decided during the run time 

 */