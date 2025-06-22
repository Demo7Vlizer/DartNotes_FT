// Flutter Singleton class : How to create singleton in Dart 

/**
  What extactly Singleton class is in object oriented programming a Singleton class is a design pattern that restrict the 
  instanciation of class to single instance in simple terms ensures that the there is only one unique instance of class
  created during the entire run time of application 
  - why do we need singleton class 
  The primary reason is to control and manage access to Shared resources or unique point of Control in our application 
  now imagine we have a database connection or configuration manager or a login service we would want multiple instances 
  of the services causing conflicts or resources wastage a singleton class ensures that there is only one instance of 
  such a service throughout our application there are several ways to create Singleton class ..

  In here we understand three easy and most widely used ways...
 */


/*
   In here we understand three easy and most widely used ways the first way is by using Factory Constructor simply create 
  a class and add private Constructor to it so that no one can instantiate it ..
  then create a static private field that receives the instance from our private constructor the user final keep the 
  field unmodified .. now create a factory constructor and from here return the instance ..
  now let's create two instances of a class and print their hash code .. 
  We can see both of the instances have the same hashcode this proves the Singleton class 
 */


class Singleton{
  Singleton._privateConstructor();

  static final _instance = Singleton._privateConstructor();

  factory Singleton(){
    return _instance;
  }
}

void main(){
  Singleton s1 = Singleton();
  Singleton s2 = Singleton();

  print(s1.hashCode);
  print(s2.hashCode);

  /**---- Print Output ------------
    324559544
    324559544
   -------------------------------*/
}


//------------------------------------------------------------------------------------------------
/**
    One of the most easy and short way of creating Singleton class is through the static field for this also 
    we need to create a class with private Constructor now create a non-private static field in order to receive 
    the instance from private construtor ..
    Let's test our class with two different instances and we can see when we print the hash code of these instances
    we getting the same hash code on the console so this again proves the Singleton clas ... 
 */


/*
class Singleton{
    Singleton._privateConstructor();

    static final instance = Singleton._privateConstructor();
}

void main(){
    Singleton s1 = Singleton.instance;
    Singleton s2 = Singleton.instance;

    print(s1.hashCode);
    print(s2.hashCode);

    /**---- Print Output ------------
    682003446
    682003446
   -------------------------------*/

}

*/