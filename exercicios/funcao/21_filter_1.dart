void main(List<String> args) {
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];

  bool Function(double) notas_boas_fn = (double nota) => nota >= 7;
  bool Function(double) notas_muito_boas_fn = (double nota) => nota >= 8.8;

  var notas_boas = notas.where(notas_boas_fn);
  var notas_muito_boas = notas.where(notas_muito_boas_fn);

  print(notas);
  print(notas_boas);
  print(notas_muito_boas);
}
