// Dart extends and implements - What's the Difference? 

/**
###-- Extends

- Use to inherit a class in another class

- Gives complete method definition to sub-class

- Only one class can be extended

- It's optional or sub class to override the method of super class

- Constructor of super class gets called before the sub class constructor
-----------------------------------------------------------------------
- Super keyword can be to access super class members in the sub class.

- Sub class need not to override the fields of super class.

- Sub class has no restriction on overriding the getters & setters of super class.

- A class gets guidelines & specifications by extending concrete or abstract class.

- When super class has no default constructor, sub class constructor must use super() 
  to call the appropriate constructor of super class...

###-- Implements

- Use to inherit a class as an interface in another class

- Gives abstract method declarations to sub-class

- Multiple classes can be implemented

- Concrete class must override all methods of interface

- Constructor of interface won't be called before the sub class constructor
--------------------------------------------------------------------------
- Interface members can’t be accessed using the super keyword.

- Implementing class must override the fields present in interface.

- Implementing class must override getters & setters of interface.

- A class gets only specifications by implementing interface.

- When interface has no default constructor, implementing class need not use super() 
  to call the appropriate constructor of interface.

 */ 