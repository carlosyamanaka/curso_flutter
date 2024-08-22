import 'dart:math';

main() {
  var nota = Random().nextInt(11);

  print(nota);

  switch (nota) {
    case 10:
    case 9:
      print('Aprovado uau mt bom');
      break;

    case 8:
    case 7:
      print('Foda');
      break;

    default:
      print('não achei, erro erro 404040');
      break;
  }

  print('Fim');
}
