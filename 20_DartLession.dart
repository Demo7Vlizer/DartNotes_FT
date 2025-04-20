//-- Functions in Dart 

/*

- Function is the self-contained block of statements that performs a specific task.
- It takes some data as input, processes it, and returns the result as an output.
- It divides larger programs into small parts.
- It’s a reusable component in a program.
- It increases readability and makes the program simple to understand and maintain.
- A function in Dart is an object; it can be assigned to variables, passed as a parameter to another function, and used as a returned value as well.
- A method is the function written inside the class, whereas a function is just an individual entity.

*/

//----------------------------------------------------------------
//-- 

void main(){
  int f = factorial(5);

  print('factorial of 5=$f');       //  factorial of 5=120
}

int factorial(int n) {
  int fact = 1;

  for (int i = 1; i <= n; i++) {
    fact = fact * i;
  }

  return fact;
}

//----------------------------------------------------------------
//-- Types & Categories of Functions

/*  
  **Notes on Functions in Programming:**

- **Types of Functions:**
  - **Pre-defined Function:**
    - These are built-in functions provided by the programming language.
    - Example: `print('Hello');` → Displays "Hello" on the screen.

  - **User-defined Function:**
    - Functions created by the programmer to perform specific tasks.
    - Example:
      ```dart
      void main() {
        // Main function
      }

      int cube(int n) {
        return n * n * n; // Returns the cube of a number
      }
      ```

**Key Takeaways:**
- Pre-defined functions save time and effort by offering ready-to-use functionality.
- User-defined functions help structure code logically and improve reusability.
- The `main()` function is essential as the starting point for execution.

 */

//-------------------------------------------------------------------------------

