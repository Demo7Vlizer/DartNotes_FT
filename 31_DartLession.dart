//-- Const constructor in Dart | Dart const constructor

/*
---

**Topics to cover**
1. What is const Constructor?
2. Rules for const Constructor.
3. Benefits of const Constructor.

---
*/

//-------------------------------------------------------

/*
---

**What is const constructor?**

Constructor defined using the `const` keyword is known as a `const constructor`.

```java
class Test {
    final int x;
    const Test(this.x);
}
Test obj = const Test(10);
```

- It creates compile-time constant objects.
- It creates immutable objects.
- It creates canonical instances, which are represented using canonical representations. They are stored in a special lookup table using canonical signatures, which are then reused.

---
 */

//--------------------------------------------------------------

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

void main() {
  Point p1 = const Point(10, 20);
  Point p2 = const Point(10, 20);

  print(p1.hashCode);   //-- 778790283
  print(p2.hashCode);  //-- 778790283 
  print(identical(p1, p2));  //-- TRUE

  Point p3 = Point(50, 60);
  Point p4 = Point(50, 60);

  print(p3.hashCode);   //-- 956203783
  print(p4.hashCode);  //-- 1063771689
  print(identical(p3, p4));  //-- false
}
















