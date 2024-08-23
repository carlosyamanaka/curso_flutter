List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaFiltrada = [];
  for (var elemento in lista) {
    if (fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}

void main(List<String> args) {
  var notas = [8.2, 7.3, 6.8, 5.4, 2.7, 9.3];
  var boas_notas_fn = (double nota) => nota >= 7.5;

  var somente_notas_boas = filtrar(notas, boas_notas_fn);

  print(somente_notas_boas);
}
