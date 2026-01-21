// 1. Given Code
// class Student {
// int id;
// String name;
// Student(int id, String name) {
// id = id;
// name = name;
// }
// }
// void main() {
// Student s = Student(1, "Rahul");
// print(s.name);
// }
// Tasks -
// ● Does the code produce output or error?
// ● If error → identify and rectify it
// ● Add functionality to:
// ○ Display both id and name
// ○ Add a method display()

// Resolve code
class Student {
    int? id;
    String? name;
    Student(int id, String name) {
        this.id = id;
        this.name = name;
    }
    
    //add Display method
    void display() {
        print("ID: $id");
        print("Name: $name");
      }
}
void main() {
    Student s = Student(1, "Rahul");
    s.display();
}
