import 'dart:io';

void main(List<String> arguments) {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
    if (a > b) {
      print(">");
    } else if (a < b) {
      print("<");
    } else {
      print("=");
    }
  }
