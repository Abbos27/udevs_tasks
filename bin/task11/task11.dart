
void main(List<String> arguments) {
  var list = [1, 5, 2, 4, 6, 7, 7];

  int max1 = list[0], max2 = list[0];
  for (var element in list) {
    if (max1 < element) {
      max2 = max1;
      max1 = element;
    } else if (max2 < element) {
      max2 = element;
    }
  }
  print(max1);
  print(max2);
}