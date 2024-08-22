import 'dart:math';

void executaPor(
    {required int qtde, required Function(String) fn, required String valor}) {
  for (var i = 0; i < qtde; i++) {
    fn(valor);
  }
}

void executar(Function fnPar, Function fnImpar) {
  Random().nextInt(10) % 2 == 0 ? fnPar() : fnImpar();
}

main() {
  executaPor(qtde: 10, fn: print, valor: "Muito legal");

  // var minha_fn_par = () => print("Eita, o valor é par!!");
  // var minha_fn_impar = () => print("Eita, o valor é ímpar!!");

  // executar(minha_fn_par, minha_fn_impar);
}
