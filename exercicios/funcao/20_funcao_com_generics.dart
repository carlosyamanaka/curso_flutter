Object segundo_elementoV1(List lista) {
  return lista.length >= 2 ? lista[1] : null;
}

E? segundo_elementoV2<E>(List<E?> lista) {
  return lista.length >= 2 ? lista[1] : null;
}

main() {
  var lista = [3, 6, 7, 12, 45, 78, 1];

  print(segundo_elementoV1(lista));

  int? segundo_elemento = segundo_elementoV2<int>(lista);
  print(segundo_elemento);
}
