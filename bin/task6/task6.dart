import 'dart:io';


void main(List<String> arguments) {
  print("Enter the year");
  var year = stdin.readLineSync();

  if (year != null) {
    int y = int.parse(year);
    while (year!.length < 4) {
      year = "0$year";
    }
    if (y % 400 == 0 || (y % 4 == 0 && y % 100 != 0)) {
      print("12/09/$year");
    } else {
      print("13/09/$year");
    }
  }
}
