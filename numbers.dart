void main() {
  num num1 = 5;

  // converting string to num
  var num2 = num.parse("12");
  print("$num2 ${num2.runtimeType}");

  print(num2.isFinite);
  print(num2.isInfinite);
  print(num2.isNaN);
  print(num2.isNegative);
  print(num2.sign);
  print("");

  var num3 = 10.78;
  print(num3.round());
  print("");

  print(num3.toInt());
  print("");

  print(num1.toDouble());
  print("");

  print(num3.toString().runtimeType);
  print("");

  var num4 = -567;
  print(num4);
  print(num4.abs());
}
