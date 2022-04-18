
void main(List<String> arguments) {
  int a = 5;
  int b = 6;
  int c;

  c = a;
  a = b;
  b = c;

  print("$a $b");
}