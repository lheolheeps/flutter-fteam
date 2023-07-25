void calcularMedia({required double nota1, required double nota2, int peso1 = 1, int peso2 = 1}) {
  // const nota1 = 9;
  // const nota2 = 9;
  // const peso1 = 1;
  // const peso2 = 3;
  
  const List<double> notas = [9, 9];
  const List<int> pesos = [1, 3];
  
  double notasPesadas = 0;
  for (int i = 0; i < notas.length; i++) {
    notasPesadas = notasPesadas + (notas[i] * pesos[i]);
  }
  
  double pesosSomados = 0;
  for (int i = 0; i < pesos.length; i++) {
    pesosSomados = pesosSomados + pesos[i];
  }
  
  final double media = notasPesadas / pesosSomados;
  print('metodo 1 $media');
  
  
  
  final double media1 = ((nota1 * peso1) + (nota2 * peso2)) / (peso1 + peso2);
  print('metodo 2 $media1');
  
  print('com if:');
  if (media < 5){
    print('I');
  } else if (media < 7) {
    print('R');
  } else if (media < 9.5) {
    print('B');
  } else {
    print('MB');
  }
  
  print('com switch:');
  switch (media) {
    case < 5:
      print('I');
    case < 7:
      print('R');
    case < 9.5:
      print('B');
    default:
      print('MB');
  }
}