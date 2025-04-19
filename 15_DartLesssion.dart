//-- Switch case in Dart | Dart & Flutter switch case

/*
void main() {
  String colorCode = 'g';

  switch (colorCode) {
    case 'r':
      print('Red');
      break;

    case 'g':
      print('Green');
      break;

    case 'b':
      print('Blue');
      break;

    default:
      print('Other Color');
  }
}
*/
//---------------------
//-- If we remove the break it'll not work
//-- If we rmeove break; and print then there is not any error showing..  
//-- if we remove the default then there is not any error showing.. 
//-- 

//-------------------------------------------------

void main() {
  String colorCode = 'R';

  switch (colorCode) {
    case 'r':
    case 'R':
      print('Red');
      break;

    case 'g':
    case 'G':
      print('Green');
      break;

    case 'b':
    case 'B':
      print('Blue');
      break;

    default:
      print('Other Color');
  }
}

