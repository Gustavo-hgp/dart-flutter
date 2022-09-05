
//EXERCICIO 5
main() {
  print("Insira os graus celsius: ");
  double? fah= stdin.readLineSync()!;
  double? celsius;
  celsius = ((fah-32)/9)*5; 
  print("celsius: $celsiusº");
}