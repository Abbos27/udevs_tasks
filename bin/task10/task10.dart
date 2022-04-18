import 'dart:io';

void main(List<String> arguments) {
  int price = int.parse(stdin.readLineSync()!);
  int s1 = int.parse(stdin.readLineSync()!);
  int s2 = int.parse(stdin.readLineSync()!);
  int s3 = int.parse(stdin.readLineSync()!);

  if(price>s1+s2+s3){
    print("no");
  }else{
    print("yes");
  }

}
