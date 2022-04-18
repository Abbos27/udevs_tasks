import 'dart:io';


void main(List<String> arguments) {
  int num = int.parse(stdin.readLineSync()!);
  var output = "";
  while (num > 0) {
    if (num >= 1000000000) {
      if ((num / 1000000000).floor() > 10) {
        int tem = (num / 1000000000).floor();
        while (tem > 0) {
          if (tem >= 100) {
            output += defineNumber((tem / 100).floor());
            output += " yuz ";
            tem = tem % 100;
            num = num % 100000000000;
            if (tem == 0) {
              output += " milliard ";
            }
          } else if (tem >= 10) {
            output += defineNumber(tem - tem % 10);
            if (num % 10000000000 == 0 || tem % 10 == 0) {
              output += " milliard ";
            }
            tem = tem % 10;
            num = num % 10000000000;
          } else {
            output += " ${defineNumber(tem)}";
            num = num % 1000000000;
            tem = 0;
            output += " milliard ";
          }
        }
      } else {
        output += defineNumber((num / 1000000000).floor());
        output += " milliard ";
        num = num % 1000000000;
      }
    } else if (num >= 1000000) {
      if ((num / 1000000).floor() > 10) {
        int tem = (num / 1000000).floor();
        while (tem > 0) {
          if (tem >= 100) {
            output += defineNumber((tem / 100).floor());
            output += " yuz ";
            tem = tem % 100;
            num = num % 100000000;
            if (tem == 0) {
              output += " million ";
            }
          } else if (tem >= 10) {
            output += defineNumber(tem - tem % 10);
            if (num % 10000000 == 0 || tem % 10 == 0) {
              output += " million ";
            }
            tem = tem % 10;
            num = num % 10000000;
          } else {
            output += " ${defineNumber(tem)}";
            num = num % 1000000;
            tem = 0;
            output += " million ";
          }
        }
      } else {
        output += defineNumber((num / 1000000).floor());
        output += " million ";
        num = num % 1000000;
      }
    } else if (num >= 1000) {
      if ((num / 1000).floor() > 10) {
        int tem = (num / 1000).floor();
        while (tem > 0) {
          if (tem >= 100) {
            output += defineNumber((tem / 100).floor());
            output += " yuz ";
            tem = tem % 100;
            num = num % 100000;
            if (tem == 0) {
              output += " ming ";
            }
          } else if (tem >= 10) {
            output += defineNumber(tem - tem % 10);

            if (num % 10000 == 0 || tem % 10 == 0) {
              output += " ming ";
            }

            tem = tem % 10;
            num = num % 10000;
          } else {
            output += " ${defineNumber(tem)}";
            num = num % 1000;
            tem = 0;
            output += " ming ";
          }
        }
      } else {
        output += defineNumber((num / 1000).floor());
        output += " ming ";
        num = num % 1000;
      }
    } else if (num >= 100) {
      output += defineNumber((num / 100).floor());
      output += " yuz ";
      num = num % 100;
    } else if (num >= 10) {
      output += defineNumber(num - num % 10);
      num = num % 10;
    } else {
      output += " ${defineNumber(num)}";
      num = 0;
    }
  }

  print(output);
}

void optimizatsiya() {}

String defineNumber(int num) {
  late String str;
  switch (num) {
    case 1:
      str = "bir";
      break;
    case 2:
      str = "ikki";
      break;
    case 3:
      str = "uch";
      break;
    case 4:
      str = "to’rt";
      break;
    case 5:
      str = "besh";
      break;
    case 6:
      str = "olti";
      break;
    case 7:
      str = "yetti";
      break;
    case 8:
      str = "sakkiz";
      break;
    case 9:
      str = "to’qqiz";
      break;
    case 10:
      str = "o'n ";
      break;
    case 20:
      str = "yigirma ";
      break;
    case 30:
      str = "o'ttiz ";
      break;
    case 40:
      str = "qirq ";
      break;
    case 50:
      str = "ellik ";
      break;
    case 60:
      str = "oltmish ";
      break;
    case 70:
      str = "yetmish ";
      break;
    case 80:
      str = "sakson ";
      break;
    case 90:
      str = "to’qson";
      break;
  }
  return str;
}
