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