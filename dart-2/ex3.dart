void main() {
  //
    print("Entre com o preço do combustivel: ");
    double preco = stdin.readLineSync(); 
    print("Entre com o total de litros abastecidos: ");
    double totalLitro = stdin.readLineSync();
  
  
  if( totalLitro <= 20){
   var gasolina = (preco * totalLitro) - (4/100 * preco) * totalLitro ;
   var etanol = (preco * totalLitro) - (3/100 * preco) * totalLitro ;
   print("Gasolina: $gasolina e Etanol: $etanol");
   if(gasolina>etanol)
     print("melhor escolha: Etanol");
    else
      print("melhor escolha: Gasolina");
  }
  else{
   var  gasolina = (preco * totalLitro) - (6/100 * preco) * totalLitro ;
   var etanol = (preco * totalLitro) - (5/100 * preco) * totalLitro ;
   print("Gasolina: $gasolina e Etanol: $etanol");
   if(gasolina>etanol)
     print("melhor escolha: Etanol");
    else
      print("melhor escolha: Gasolina");
    } 
}