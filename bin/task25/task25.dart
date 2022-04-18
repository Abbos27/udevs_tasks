import 'dart:io';


void main(List<String> arguments) {

  int n = int.parse(stdin.readLineSync()!);
  int h = n ~/ 3600;
  n %= 3600;
  while (h > 24) {
    h -= 24;
  }

  String formatM = "${n ~/ 60}";
  String formatS = "${n % 60}";
  if (n ~/ 60 < 10) {
    formatM = "0${n ~/ 60}";
  }
  if (n % 60 < 10) {
    formatS = "0${n % 60}";
  }
  print("$h:$formatM:$formatS");
}
