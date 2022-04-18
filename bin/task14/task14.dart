import 'dart:io';

void main(List<String> arguments) {
  int N = int.parse(stdin.readLineSync()!);
  int K = int.parse(stdin.readLineSync()!);

  int infectedNum = 1;
  while(N>0){
    infectedNum += infectedNum*K;
    N--;
  }

  print(infectedNum);

}