//--if else in Dart | Dart decision making
//-------------------------------------------------

/*
Simple if
---------
if(condition) {
    statements
}
*/

/*
void main() {
    int likes = 5;

    if(likes > 0) {
        print('Thanks to hit like button');
    }

    print('Thanks for watching');
}
*/

//---------------------------------------------------------------
//-- 

/*
if-else
--------

if(condition) {
    true block statements
} else {
    false block statements
}
*/

/*
void main() {
    int a = 10;

    if(a % 2 == 0){
        print('Number is Even');
    } else {
        print('Number is Odd');
    }
}
*/

//---------------------------------------------------------------

// Nested if-else
// -----------------
 /*
if(condition-1) {
    if(condition-2) {
        statement-1;
    } else {
        statement-2;
    }
} else {
    if(condition-3) {
        statement-3;
    } else {
        statement-4;
    }
}
*/

/*
void main() {
    int a = 10, b = 20, c = 5;

    if (a > b) {
        if (a > c) {
            print("Largest no=$a");
        } else {
            print("Largest no=$c");
        }
    } else {
        if (b > c) {
            print("Largest no=$b");
        } else {
            print("Largest no=$c");
        }
    }
}
  */

//---------------------------------------------------------------
/* else-if ladder */
// ---------------------
/*
if(condition-1)
    statement-1;
else if(condition-2)
    statement-2;
else if(condition-3)
    statement-3;
else if(condition-N)
    statement-N;
else
    default-statement;
*/

/*
 void main() {
  int day = 3; // Initializes a variable 'day' with the value 3

  // Checks if 'day' matches any of the predefined day values
  if (day == 1) {
    print('Monday');       // Prints 'Monday' if 'day' equals 1
  } else if (day == 2) {
    print('Tuesday');      // Prints 'Tuesday' if 'day' equals 2
  } else if (day == 3) {
    print('Wednesday');    // Prints 'Wednesday' if 'day' equals 3
  } else if (day == 4) {
    print('Thursday');     // Prints 'Thursday' if 'day' equals 4
  } else if (day == 5) {
    print('Friday');       // Prints 'Friday' if 'day' equals 5
  } else if (day == 6) {
    print('Saturday');     // Prints 'Saturday' if 'day' equals 6
  } else if (day == 7) {
    print('Sunday');       // Prints 'Sunday' if 'day' equals 7
  } else {
    print('Invalid Day');  // Prints 'Invalid Day' if 'day' is not between 1 and 7
  }
}
*/