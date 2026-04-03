// 4. Given Code -
// class Person {
// String name;
// Person(this.name);
// }
// void main() {
// Person p1 = Person("Amit");
// Person p2 = Person("Amit");
// print(p1 == p2);
// }

// Tasks-
// ● Predict output
// false

// ● Explain why
// In Dart, == compares object references by default
// p1 and p2 are two different objects in memory
// Even though their name values are the same, references are different

// ● Override equality operator
// To compare objects by value, we override:
// == operator
// hashCode

// ● Add functionality: compare by name
class Person {
  String name;

  Person(this.name);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Person) return false;
    return name == other.name;
  }

  @override
  int get hashCode => name.hashCode;
}

void main() {
  Person p1 = Person("Amit");
  Person p2 = Person("Amit");
  Person p3 = Person("Rahul");

  print(p1 == p2); // true
  print(p1 == p3); // false
}
