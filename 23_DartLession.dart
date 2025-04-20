//-- Recursion in Dart

//-- Recusrion is  basically a process which function calls itself again and again repeatedly.. such a function known as recursion..
//- Recusion function or recursion is mostly use in which situation where a function can be define form of itself..

//----------------------------------------------------------------------------
//- 5! = five factorial..
//- 5! = 1*2*3*4*5
//- 5! = 4! * 5

void main() {
  int fact = getFactorial(5);

  print('Factorial of 5 = $fact');        //  Factorial of 5 = 120
}

int getFactorial(int n) {
  if (n == 1) {
    return 1;
  }
  return n * getFactorial(n - 1);
}
