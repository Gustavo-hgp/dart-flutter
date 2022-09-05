void main() {
  print("insira a 1° nota: ");
  double nota1 = double.parse(stdin.readLineSync()!);
  print("insira a 2° nota: ");
  double nota2 = double.parse(stdin.readLineSync()!);

  var calculo = (nota1 + nota28);

  if (calculo >= 6.0) {
    print("Aprovado! Média: $calculo");
  } else {
    print("Reprovado! Média: $calculo");
  }
}