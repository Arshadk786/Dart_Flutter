void main() {
  print("1. For Loop");
  for (var i = 0; i <= 10; i++) {
    print(i);
  }
  print("");

  print("2. For in ");
  List l1 = ['A', 'B', 'C', 56];
  for (var i in l1) {
    print(i);
  }
  print("");

  print("3. While");
  int i = 0;
  while (i <= 3) {
    print(i);
    i++;
  }
  print("");

  print("4. Do While");
  int j = 0;
  do {
    print(j);
    j++;
  } while (j <= 5);
}
