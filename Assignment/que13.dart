// 5. Given Code -
// void main() {
// int day = 1;
// switch (day) {
// case 1:
// print("Monday");
// case 2:
// print("Tuesday");
// break;
// }
// }
// Tasks -
// ● Predict output
// Monday
// Tuesday

// ● Explain Dart switch behavior
// Dart allows fall-through if break is not used
// Since case 1 has no break, execution continues to case 2
// This is called fall-through

// ● Fix the logic
void main() {
  int day = 1;

  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
  }
}

// ● Add functionality: handle all weekdays
void main() {
  int day = 3;

  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }
}