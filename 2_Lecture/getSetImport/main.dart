import 'getSet.dart';
void main(){
  //object create
  Person p1 = new Person("janvi", 20);
  p1.display();
  p1.name = "Lucky";
  print(p1.name);
  Person p2 = new Person("GLS", 99);
  p2.display();
}
