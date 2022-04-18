import 'dart:io';

void main(List<String> arguments) {
  int phone = int.parse(stdin.readLineSync()!);

  int s = phone;
  while (s > 0) {
    int home = phone - s;
    if (home % 100 == s) {
      print(home);
    }
    s--;
  }
}
