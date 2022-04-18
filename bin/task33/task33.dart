import 'dart:io';


void main(List<String> arguments) {
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print(1);
    return;
  }

  bool c = false;
  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      c = true;
      break;
    }
  }
  if (c && n != 1) {
    int sum = 0;
    int t = n;
    while (t != 0) {
      int d = t % 10;
      sum += d;
      t ~/= 10;
    }

    int sumPrime = 0;
    t = n;
    for (int i = 2; i < t; i++) {
      while (t % i == 0) {
        t ~/= i;
        int temp = i;
        while (temp != 0) {
          int d = temp % 10;
          sumPrime += d;
          temp ~/= 10;
        }
      }
    }

    if (t > 2) {
      while (t != 0) {
        int d = t % 10;
        sumPrime += d;
        t ~/= 10;
      }
    }

    if (sumPrime == sum) {
      print(1);
    } else {
      print(0);
    }
  } else {
    print(0);
  }
}
