import 'dart:io';


void main(List<String> arguments) {
  print("Enter the year");
  var year = int.parse(stdin.readLineSync()!);

    if (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)) {
      print("Kabisa yili");
    } else {
      print("Kabisa yili emas");

    }
  }

