import 'dart:io';

class AgeException implements Exception {
  String message;
  AgeException(this.message);

  @override
  String toString() => message;
}

void main() {
  try {
    print("Enter your age:");
    int age = int.parse(stdin.readLineSync()!);

    if (age < 18) {
      throw AgeException("Age must be 18 or above.");
    }

    print("Access granted. Age is valid.");
  } catch (e) {
    print("Exception: $e");
  }
}
