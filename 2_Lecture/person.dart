class Person{
  //Data member
  String name = "Ram";
  int age = 20;

  //member function
  display(){
    print("NAme = ${name} and age = ${age}");
  }
}

void main(){
  //object create
  Person p1 = new Person();
  p1.display();
}
