## what is Dart..?

**Dart Programming Language:**

- General-purpose Object-Oriented Programming Language.
- Similar to Java and C#.
- Developed by Google, designed by Lars Bak and Kasper Lund.
- First unveiled at the GOTO conference in Denmark on October 10, 2011.
- **Dart 1.0:** Released in November 2013.
- **Dart 2.0:** Released in August 2018.
- Official language for Flutter.
- Applications: Mobile apps, Web apps, Desktop apps, and Server-side apps that run on multiple platforms.

---

## Feature of Dart..

**Object-Oriented Programming Concepts in Dart:**

- **Class:** Defines the blueprint of an object.
- **Inheritance:** Enables a class to derive properties and methods from another class.
- **Mixin:** A way to add functionality to classes.
- **Encapsulation:** Protects data by restricting access.
- **Polymorphism:** Allows a single interface to represent different types.
- **Object:** The instance of a class.
- **Generics:** Provides flexibility to write type-safe and reusable code.
- **Exception Handling:** Manages runtime errors gracefully.
- **Interface:** Defines a contract that classes must implement.
- **Abstraction:** Hides complexity while exposing essential details.

#### - Multi platform deployment..

#### - This supports a Synchronous..

**Comparison of Synchronous vs. Asynchronous Programming:**

1. **Synchronous Programming:**

   - Tasks are executed one after another.
   - Task 1 begins first, taking 10 seconds.
   - Task 2 starts only after Task 1, taking an additional 7 seconds.
   - Task 3 follows, taking 5 seconds.
   - Finally, Task 4 starts after Task 3, taking 6 seconds.
   - **Total time taken: 28 seconds.**

2. **Asynchronous Programming:**
   - Tasks start simultaneously and run independently.
   - Task 1 takes 10 seconds.
   - Task 2, Task 3, and Task 4 begin at the same time as Task 1.
   - Task 2 takes 7 seconds, Task 3 takes 5 seconds, and Task 4 takes 6 seconds.
   - **Total time taken: 10 seconds.**

#### - **Extensive Libraries in Dart:**

- Dart provides a rich set of libraries to enhance programming.
- Examples of libraries include:

  - **Core:** Offers essential classes and functions.
  - **Async:** Supports asynchronous programming.
  - **HTML:** Useful for web programming.
  - **Collection:** Helps with managing collections like lists and sets.
  - **IO:** Facilitates input and output operations.
  - **Math:** Provides mathematical functions.
  - **Convert:** Assists in data conversion tasks.

#### - Platform Independent : All over where it can be use eg.. linux or window..

#### - Type safety & Null safety..

#### - Open source..

#### - Easy to learn..

---

**Introduction to Dart Series Topics:**

1. **Language Fundamentals**

   - Variables, data types, decision-making, loops

2. **Object-Oriented Programming**

   - Class, Object, Methods, Constructors, Encapsulation

3. **Inheritance**

   - Super & Sub class, Interface, Mixin, Polymorphism

4. **Exception Handling**

   - Try, Catch, Finally

5. **Generics & Collection**

   - List, Set, Map

6. **Asynchronous Programming**
   - Async, Await, Future

---

## - When we creating dart or flutter application.. we've to go through two different phases.. that is development phase and the deployment phase..

- The Development phase is the phase.. where you write debugs and test your application
- on other hand the deployment phase feels also called production mode.. or release mode.. it is the phase.. in which you're about to launch final appliction to end user..

- ...............................................................

**Development & Deployment in Dart:**

- **Development Phase:**

  - Uses **JIT (Just-In-Time) compilation** and **DVM (Dart Virtual Machine)** for efficient execution.
  - **dartdevc** (Dart Development Compiler) helps with web development.

- **Deployment Phase:**

  - Utilizes **AOT (Ahead-Of-Time) Compilation** for better performance.
  - Supports **Native X64/ARM** execution environments.
  - **dart2js** converts Dart code into JavaScript for web applications.

  - ...............................................................

**Dart Programming for Web Development:**

- **Process Overview:**

  - Starts with writing a **Dart program**.
  - Compiled by **dartdevc** (Dart Development Compiler).
  - Program is then deployed to the **web** (WWW).

- **Phases of Development & Deployment:**
  - **Development Phase:**
    - Utilizes **JIT (Just-In-Time) + DVM (Dart Virtual Machine)** for efficient execution.
    - Option to use **dartdevc** for web development.
  - **Deployment Phase:**
    - Uses **AOT (Ahead-Of-Time) Compilation** for optimized performance.
    - Supports **Native x64/ARM** environments.
    - Transpiles Dart to JavaScript using **dart2js** for web applications.
- ..........................................................

**Stand-alone Deployment in Dart:**

- **Key Process:** The deployment involves three stages:
  1. **Dart Program:** The initial code written in Dart.
  2. **Dart Compiler:** Translates the Dart program.
  3. **DVM (Dart Virtual Machine):** Executes the compiled program.
- ...............................................

**AOT (Ahead-Of-Time) Compilation in Dart:**

- **Input:** Dart program.
- **Compilation Process:**
  - AOT Compilation compiles the Dart program for deployment.
- **Deployment Targets:**
  1. **Android:** Creates `.apk` or `.aab` files.
  2. **iOS:** Generates `.ipa` files.
  3. **Desktop:** Produces `.exe` files for execution.

**Development & Deployment Details:**

- **Development:**
  - Uses **JIT + DVM** (Just-In-Time and Dart Virtual Machine).
  - Supports **dartdevc** for web development.
- **Deployment:**
  - Utilizes **AOT + runtime** for Native x64/ARM platforms.
  - Transpiles to JavaScript with **dart2js** for web applications.
- .............................................................................

**Native Deployment for Dart Programs:**

- **Tool Used:** `dart2native`
- **Process Overview:**
  - Starts with a Dart program file.
  - The `dart2native` tool compiles the program.
  - Results in native executables for multiple platforms:
    - **Windows**
    - **Linux**
    - **macOS**

---

# Dart Variables

## Introduction

- Variables are used to store data.
- Variables store references of an object.

## Rules for Naming Variables

- Can contain alphabets and digits.
- Cannot start with a digit.
- Allows only two special symbols: underscore `_` and dollar `$`.
- Cannot be a keyword.
- Case-sensitive.
- .......................................

# Creating Variables in Dart

## Type Annotations

- Specifies the type explicitly before the variable name.
- Example:

  ```dart
  int age;
  double price;
  String name = 'Siddharth';
  List<int> values = [];

  ```

- BY using var.. Keyword..
- Dart infers the type based on the assigned value.

```dart
var age;
var name = 'Siddharth';
```

- By using dynamic keyword
- Allows the variable to hold values of any type.

```dart
dynamic age;
dynamic name = 'Siddharth';
```

---

# Comparison Between `var` and `dynamic` Keywords in Dart

## `var`

- `var` is a **keyword**, not a type.
- Uses **static type checking** with Dart Analyzer.
- Produces **compile-time errors**.

### Example:

```dart
var x = 10;
print(x.toUpperCase()); // Error
---------------------------------
var x = 10;
x = 20;
print(x.runtimeType); // int
x = 'Hello'; // Error
x = 5.2; // Error
```

- Recommendation : Use for type-safe code.
- .....................................................

### Dynamic

- dynamic is both a keyword and a stand-alone type.
- Disables Dart Analyzer; skips runtime type checking..
- Throws runtime exceptions..

```dart
dynamic x = 10;
print(x.toUpperCase()); // Exception
-----------------------------------
dynamic x = 10;
x = 20;
print(x.runtimeType); // int
x = 'Hello'; // Works
print(x.runtimeType); // String
x = 5.2; // Works
print(x.runtimeType); // double
```

- Recommendation: Use only when necessary (e.g., encoding/decoding JSON).

---

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

### Static type checking - this type of checking.. also called sound typing or sound type systen

- Ensures type safety during compile time
- Shows compile time error
- Performed by Dart's static analyzer..

### Runtime Checks..

- Ensures type safety during runtime..
- Gives Exception at runtime
- Performed by Dart's runtime system..

---

### Types of comments..

- Documentation Comment.. -- this are used to write..
  /// This is the entry point <u> entry point <u> -- with three slashes.. called documentation comments..

- Todo comment
  // TODO: Write some code here..

---

# Dart Data Types

## Single Value Types

- **Numbers**
  - Example: Integers, Doubles
- **Strings**
  - Example: Text data
- **Booleans**
  - Example: `true` or `false`

## Multi Value Types

- **List**
  - Example: Collection of ordered elements
- **Set**
  - Example: Collection of unique elements
- **Map**

  - Example: Key-value pairs

- .........................................................

# Numbers in Dart

## `int` (Integer)

- Represents **whole numbers**.
- **Native platforms:** Range from -2^63 to 2^63 - 1.
- **Web platforms:** Represented as JavaScript numbers (64-bit floating-point values with no fractional part).

### Examples:

```dart
int a;
int x, y, z;
int age = 21;
```

## `double` (Floating-point numbers)

- Represents **fractional numbers**.
- Supports **64-bit precision** as per IEEE 754 standard.

### Examples:

```dart
double area;
double y, z;
double price = 5.1;
```

- ................................................................

# Strings in Dart

## Overview

- A String in Dart is an **object** of the class `"String"`.
- Holds a sequence of **UTF-16 code units**.
- Strings can be created using **single** or **double quotes**.

## Types of Strings

### Normal String

- Single or double quotes used to define a normal string.

```dart
String s = 'Hello';
String s = "Welcome";
```

### Raw String

- Prefixed with `r` to treat backslashes as literals.

```dart
String s = r'Hello\nice'; 
String s = r'Welcome\nice';
```

### Multiline String

- Enclosed in triple single quotes (`'''`) or triple double quotes (`"""`).

```dart
String s = '''This
              is
              Text''';
String s = """This
              is also
              Text""";
```
- ..................................................
# Booleans in Dart

## Overview
- Used to represent **boolean values**.
- The type **bool** is used.
- Stores the boolean literals `true` and `false`, both of which are **compile-time constants**.

## Example
```dart
bool isLoading = false;
```

-----------------------------------------------------------

### List in Dart | Dart list tutorial | Dart tutorial #9
- Topics to cover 
- What is list
- Growable & fixed-length list
- Creating the list
- Accessing List elements
- Iterating List
- Immutable (const) List 
- ...............................................................
# List in Dart

## Overview
- Equivalent to arrays in **C, C++, Java & C#**.
- Ordered collection of **index-based values**.
- **Indexing starts at 0**.
- **Allows duplicate elements**.
- Supports **generics**, allowing the same or different types of values.
- Can be **growable or fixed-length**.
- `List` is a **predefined class** in Dart and implements `Iterable`.
- **Most widely used collection** in Dart & Flutter.

## Example
```dart
var x = [7, 21, 5, 6, 18];
```
### List values with indices:
- `x[0] = 7`
- `x[1] = 21`
- `x[2] = 5`
- `x[3] = 6`
- `x[4] = 18`


--------------------------------------------------------------------------------------------------------------------
# Comparison of List vs Set

## 1. Order of Elements
- **List:** Ordered.
- **Set:** Unordered.

## 2. Duplicate Elements
- **List:** Allowed.
- **Set:** Not Allowed.

## 3. Index-Based Access
- **List:** Yes.
- **Set:** No.

## 4. Modifying Element Values
- **List:** Possible.
- **Set:** Not Possible.

## 5. Modification of 'Length' Property
- **List:** Allowed.
- **Set:** Not Allowed.

## 6. Support for Operations (Sort, Shuffle, Reversed)
- **List:** Available.
- **Set:** Not Available.

## 7. Conversion to Map
- **List:** Available.
- **Set:** Not Available.

## 8. Ability to Store Multiple 'Null' Values
- **List:** Yes.
- **Set:** No.

--------------------------------------------------------------------------------------------------------------------

# Operator Basics

## Definition
An operator is a symbol that tells the computer to perform a specific arithmetic or logical action.

## Purpose
Operators create expressions and operate on data or variables.

## Types of Operators
- **Unary**: Operates on a single operand (e.g., `-x`).
- **Binary**: Operates on two operands (e.g., `x + y`).
- **Ternary**: Operates on three operands (e.g., `x ? y : z`).

### Example of an Expression
- **Expression**: `x = y + z;`
  - **Operators**: `=` and `+`
  - **Operands**: `x`, `y`, `z`

---

# Types of Operators in Programming

1. **Arithmetic Operators**: Perform basic mathematical operations like addition (`+`), subtraction (`-`), multiplication (`*`), etc.
2. **Relational Operators**: Compare values, such as greater than (`>`), less than (`<`), or equal to (`==`).
3. **Logical Operators**: Combine multiple conditions, e.g., AND (`&&`), OR (`||`), NOT (`!`).
4. **Assignment Operators**: Assign values, e.g., `=` or `+=`.
5. **Increment & Decrement Operators**: Increase (`++`) or decrease (`--`) values by one.
6. **Bitwise Operators**: Perform bit-level operations, like AND (`&`), OR (`|`), XOR (`^`).
7. **Conditional Operators**: Ternary operator, e.g., `? :`, for concise conditional statements.
8. **Type Test Operators**: Check or test data types.
9. **Cascade & Spread Operators**: Efficiently handle collections or objects in some languages.
10. **Null Aware Operators**: Deal with `null` values safely.
11. **Other Operators**: Language-specific operators or those serving special purposes.

--------------------------------------------------------------------------------------------------------------------

