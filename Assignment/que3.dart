import 'dart:io';

void main() {
  print("Enter a sentence:");
  String input = stdin.readLineSync()!;

  int letters = 0;
  int digits = 0;

  for (int i = 0; i < input.length; i++) {
    String ch = input[i];

    if ((ch.codeUnitAt(0) >= 65 && ch.codeUnitAt(0) <= 90) ||
        (ch.codeUnitAt(0) >= 97 && ch.codeUnitAt(0) <= 122)) {
      letters++;
    } else if (ch.codeUnitAt(0) >= 48 && ch.codeUnitAt(0) <= 57) {
      digits++;
    }
  }

  print("LETTERS $letters");
  print("DIGITS $digits");
}
