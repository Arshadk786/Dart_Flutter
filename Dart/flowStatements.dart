import 'dart:io';

void main() {
  int? num1 = int.parse(stdin.readLineSync()!);
  // if (num1 > 0) {
  //   print("Positive");
  // } else if (num1 == 0) {
  //   print("Zero");
  // } else {
  //   print("Negative");
  // }

  switch (num1) {
    case 1:
      {
        print("$num1");
        break;
      }
    case 2:
      {
        print("$num1");
        break;
      }
    case 3:
      {
        print("$num1");
        break;
      }
    default:
      {
        print("Other than those 3 lol");
      }
  }
}
