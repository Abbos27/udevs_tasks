import 'dart:io';


void main(List<String> arguments) {
  var W = int.parse(stdin.readLineSync()!);
  var H = int.parse(stdin.readLineSync()!);
  var d = int.parse(stdin.readLineSync()!);


   var s = (d*d/2) ;

   print(W/d*s*H/d);
}