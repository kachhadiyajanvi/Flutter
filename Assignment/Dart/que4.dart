import 'dart:io';

void main() {
  print("Enter start range:");
  int start = int.parse(stdin.readLineSync()!);

  print("Enter end range:");
  int end = int.parse(stdin.readLineSync()!);

  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print("Number: $i  Square: ${i * i}");
    }
  }
}
