///This is Documentation comments

void main() {
//1. Var Variable
  var name = "Arshad";
  print("Var Variable : $name");

  // 2. Datatype Variable

  int num = 5;
  print("Datatype Variable : $num");

  // 3. final Variable

  final fname = "Arshad";
  print("final Variable : $fname");
  // fname = "Sameer"; this will not work bcoz final cannot be changed after assigned.

  // 4. const Variable
  const lname = "Khan";
  print("const Variable : $lname");
  // lname = "matthew"; this will not work bcoz const cannot be changed after assigned.

  // 5. datatype? Variable
  int? num1; 
  // ? is used to make variable nullable which means it can be null or int and it can be assigned later or not.

  // 6. late Variable
  late String name1;
  // late is used to make variable nullable which means it can be null or int and it can be assigned later or not.

}
