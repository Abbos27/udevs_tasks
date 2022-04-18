import 'dart:io';


void main(List<String> arguments) {
  int num = int.parse(stdin.readLineSync()!);
      num = (num%10);
    print(num);
}
