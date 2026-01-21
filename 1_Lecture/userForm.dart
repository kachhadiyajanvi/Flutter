import 'dart:io';
void main(){
  String ?name;
  print("Enter a value : ");

  // get value from user
  name = stdin.readLineSync();
  int num = int.parse(name!);
  print("your value is : $num");

  // check value type
  print(num.runtimeType);

  // check type is or not
  print("${num is int}"); //true
  print("${num is! int}"); //false

  //as operater use for type casting
  dynamic val = "10";
  String str = val as String;
  print("String is ${str} value is: ${val}");
}