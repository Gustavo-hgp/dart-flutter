//EXERCICIO 3
main() {
  print("Escreva o valor do custo de fábrica: ");
  double? custo = stdin.readLineSync()!;
  
  
  //calcula imposto
  var valor = ((28/100)*custo)+((45/100)*custo)+custo; 
  print("Valor é $valor");
} 

