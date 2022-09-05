void main() {
var flag = 0;
  while(flag != 1){
    print("Entre com o Nome: ");
    String? name = stdin.readLineSync();
    print("Entre com sua altura em metros: ");
    double altura = stdin.readLineSync();
    print("Entre com o sexo: F/M ");
    var sexo = stdin.readLineSync();
    
    switch(sexo){
      case 'm':
        double? pesoIdeal = (72.7 * altura) -58;
        print("Peso ideal: " + pesoIdeal.toStringAsFixed(2));
        break;
      case 'f': 
        double? pesoIdeal = (62.1 * altura) - 44.7;
        print("Peso ideal: " + pesoIdeal.toStringAsFixed(2));
        break;
      default:
        print("insira sexo válido");
    }
    print("Para calcular novamente digite 0, para sair digite 1");
    flag = stdin.readLineSync();
    
    }
  
}