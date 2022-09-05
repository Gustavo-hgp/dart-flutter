//EXERCICIO 4
main() {
  print("Total de votos: ");
  int? total = stdin.readLineSync()!;
  print("Total de votos nulos: ");
  int? nulos = stdin.readLineSync()!;
  print("Total de votos brancos: ");
  int? brancos = stdin.readLineSync()!;
  print("Total de votos validos: ");
  int? validos = stdin.readLineSync()!;
  
  
  

  double? porc_nulos = (nulos*100)/total;
  double? porc_brancos = (brancos*100)/total;
  double? porc_validos = (validos*100)/total;
  print("A Porcentagem de votos nulos é $porc_nulos%\nA Porcentagem de votos brancos é $porc_brancos%\nA Porcentagem de votos nulos é $porc_validos%   ");
  
  
} 
