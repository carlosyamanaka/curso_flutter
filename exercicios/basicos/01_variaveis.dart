main() {
  var n1;
  var n2 = 4.56;

  print(n1.runtimeType);

  n1 = 2;

  print(n1.runtimeType);
  print(n2.runtimeType);

  print(n1 is String);
  print(n1 is int);
}
