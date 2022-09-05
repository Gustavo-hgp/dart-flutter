void main() {
   print("Entre com a matricula: ");
    String? register = stdin.readLineSync();
    print("Entre com sua altura em metros: ");
    var nasc =  int.parse(stdin.readLineSync());
    print("Entre com o sexo: F/M ");
    var ingresc =  int.parse(stdin.readLineSync());
  var hoje= DateTime.now();
  var idade = hoje.year - nasc;
  var contribuicao = hoje.year - ingresc;
  
  
  if(contribuicao >= 25 && idade >= 60)
    print("apto");
  else if(contribuicao>= 30 )
    print("apto");
  else if(idade >= 65)
    print("apto");
  else
    print("não apto");
}