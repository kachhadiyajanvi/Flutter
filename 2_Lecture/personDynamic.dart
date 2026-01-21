class Person{
  //Data member
  String ?name;
  int ?age;

  //member function
  display(name, age){
    print("Name = ${name} and age = ${age}");
  }
}

void main(){
  //object create
  Person p1 = new Person();
  p1.display("Janvi", 20);
  Person p2 = new Person();
  p2.display("Bharvi", 21);
}
