class Person{
  //Data member
  String _name;
  int age;

  //other way to assign constructor
  Person(this._name, this.age);
  // getter function
  String get name => this._name;
  // setter function
  set name(val){this._name = val;}

  //member function
  display(){
    print("Name = ${name} and age = ${this.age}");
  }
}

void main(){
  //object create
  Person p1 = new Person("janvi", 20);
  p1.display();
  p1.name = "Lucky";
  print(p1.name);
  Person p2 = new Person("GLS", 99);
  p2.display();
}
