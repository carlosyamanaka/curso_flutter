class Carro {
  final int velocidade_maxima;
  int _velocidade_atual = 0;

  Carro(this.velocidade_maxima);

  int get velocidade_atual {
    return this._velocidade_atual;
  }

  void set velocidade_atual(int nova_velocidade) {
    bool validar_diferenca = (_velocidade_atual - nova_velocidade).abs() <= 5; //só pode alterar, no maximo, de 5 em 5
    if (validar_diferenca && nova_velocidade >= 0) {
      this._velocidade_atual = nova_velocidade;
    }
  }

  bool esta_no_limite() {
    return _velocidade_atual == velocidade_maxima;
  }

  int acelerar({int incremento = 5}) {
    if (_velocidade_atual + 5 >= velocidade_maxima) {
      return _velocidade_atual = velocidade_maxima;
    } else {
      return _velocidade_atual += incremento;
    }
  }

  int freiar({int decremento = 5}) {
    if (_velocidade_atual - 5 <= 0) {
      return _velocidade_atual = 0;
    } else {
      return _velocidade_atual -= 5;
    }
  }
}
