main() { 
  //Quando utiliza o final, marca a referencia como imutável, internamente não
  //O const deixa tudo imutável
  var lista = const ['Ana', 'Lia', 'Gui']; //Mudei os literais, mas se eu reatribuir o valor, vai funcionar
  lista = ['Bea', 'Carlos'];
  lista.add('Rebeca');
  print(lista);
}
