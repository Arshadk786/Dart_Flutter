void main() {
  test a = new test.cons1();
  a.show();
  test b = new test("hi", 7);
  b.show();
  test2 t2 = new test2("Yes", 1);
  t2.show();
}

class test {
  String test1 = "Hello";
  int n1 = 5;

  test(this.test1, this.n1) {}

  test.cons1() {
// named constructor is displayed as classname.constructorname
  }

  void show() {
    print("$test1 $n1");
  }
}

class test2 extends test {
  test2(test1, n1) : super(test1, n1);
}
