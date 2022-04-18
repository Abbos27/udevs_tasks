import 'dart:io';


void main(List<String> arguments) {
  int class1 = int.parse(stdin.readLineSync()!);
  int class2 = int.parse(stdin.readLineSync()!);
  int class3 = int.parse(stdin.readLineSync()!);

  print(((class1 + class2 + class3) / 2).ceil());
}
