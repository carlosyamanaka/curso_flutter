void main(List<String> args) {
  List aprovados = ['Ana', 'Beatriz', 'Carlos'];
  // print(aprovados[0]);
  // print(aprovados.length);

  Map telefones = {
    'Joao': '+55 (11) 54321-5433',
    'Maria': '+55 (21) 34543-1232',
    'Pedro': '+55 (43) 23132-2133'
  };

  // print(telefones['Joao']);
  // print(telefones.length);
  // print(telefones.keys);
  // print(telefones.values);
  // print(telefones.entries);

  var times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};

  print(times.runtimeType);
  times.add('Palmeiras');
  times.add('Palmeiras');
  times.add('Palmeiras');
  print(times.length);
  print(times.contains('Vasco'));
  print(times.first);
  print(times.last);
}
