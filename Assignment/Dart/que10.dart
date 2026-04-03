// 2. Given Code
// void main() {
// int marks = 85;
// if (marks > 90) {
// print("A");
// } else if (marks > 75) {
// print("B");
// } else {
// print("C");
// }
// }

// Tasks-
// ● Predict output
// B

// ● Identify logical issue
// | Marks   | Grade |
// | ------- | ----- |
// | ≥ 90    | A     |
// | 75 – 89 | B     |
// | < 75    | C     |

// ● Fix grading logic
import 'dart:io';

void main() {
  print("Enter marks:");
  int marks = int.parse(stdin.readLineSync()!);

  if (marks >= 90 && marks <= 100) {
    print("Grade: A");
  } else if (marks >= 75 && marks < 90) {
    print("Grade: B");
  } else if (marks >= 0 && marks < 75) {
    print("Grade: C");
  } else {
    print("Invalid marks");
  }
}