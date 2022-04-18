import 'dart:io';


void main(List<String> arguments) {
  var firstInput = stdin.readLineSync()!;
  var secondInput = stdin.readLineSync()!;
  var thirdInput = stdin.readLineSync()!;
  var forthInput = stdin.readLineSync()!;
  var fifthInput = stdin.readLineSync()!;

  List<int> list = [
    int.parse(firstInput),
    int.parse(secondInput),
    int.parse(thirdInput),
    int.parse(forthInput),
    int.parse(fifthInput)
  ];

  int max = list[0], min = list[0];
  int sum = 0;
  for (var element in list) {
    if (max < element) {
      max = element;
    }
    if (min > element) {
      min = element;
    }
    sum += element;
  }
  print("${sum - max} ${sum - min}");
}
