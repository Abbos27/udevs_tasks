import 'dart:io';


void main(List<String> arguments) {
  var h1 = int.parse(stdin.readLineSync()!);
  var m1 = int.parse(stdin.readLineSync()!);
  var s1 = int.parse(stdin.readLineSync()!);
  var h2 = int.parse(stdin.readLineSync()!);
  var m2 = int.parse(stdin.readLineSync()!);
  var s2 = int.parse(stdin.readLineSync()!);

  print((h2 - h1) * 3600 + (m2 - m1) * 60 + (s2 - s1));
}
