
void main(List<String> arguments) {
  // List<int> list = [37, 37, 91, -76, -13, 13, -32, 32];
  List<int> list = [32, 11, 37, 82, 27, 15, 53, 16];
  int counter = 0;
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < list.length; j++) {
      if (i < j && list[i] > 2 * list[j]) {
        counter++;
      }
    }
  }
  print(counter);
}
