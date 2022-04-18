import 'dart:io';

void main(List<String> arguments) {
  int n = int.parse(stdin.readLineSync()!);
  List<int> list=[];

  for (int i = 0; i < n; i++) {
    int num = int.parse(stdin.readLineSync()!);
    list[i] = num;
  }

  for (int i = 0; i < n; i++) {
    int num = list[i];
    for (int j = i + 1; j < n; j++) {
      if (num == list[j]) {
        print(num);
        break;
      }
    }
  }
}
