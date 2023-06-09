void main() async{
  // async is a keyword that is used to mark a function as a asynchronous function which returns a Future.
  await funcFut(); // await is used to wait for the function to complete.
  print("Hello");
}

Future funcFut() async {
  // Future is a class that represents a potential value, or error, that will be available at some time in the future.
  // delayed() is a static method of Future class that returns a future that completes after a given duration.
  await Future.delayed(Duration(seconds: 2)).whenComplete(() => print("Future Done"));
}
