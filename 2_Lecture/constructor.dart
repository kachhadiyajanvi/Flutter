class Person{
  //Data member
  String ?name;
  int ?age;

  //parameter Constructor 
  // Person(n, age){
  //   this.name = n;
  //   this.age = age;
  // }

  //other way to assign constructor
  Person(this.name, this.age);

  //member function
  display(){
    print("NAme = ${name} and age = ${age}");
  }
}

void main(){
  //object create
  Person p1 = new Person("janvi", 20);
  p1.display();
  Person p2 = new Person("GLS", 99);
  p2.display();
}
