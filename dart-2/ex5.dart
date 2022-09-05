import 'dart:io';

void main() {
  int nota1 = 10;
  int nota2 = 0;
  int nota3 = 5;

  double media = (nota1 + nota2 + nota3) / 3;

  if (media >= 9.0) {
    print("Conceito: A");
  }

  if (media >= 7.5 && media < 9.0) {
    print("Conceito: B");
  }

  if (media >= 6.0 && media < 7.5) {
    print("Conceito: C");
  }

  if (media < 6.0) {
    print("Conceito: D");
  }
}