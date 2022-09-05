//EXERCICIO 2
import dart.io;
main() {
  print("Digite o dia do seu aniversario: ");
  int dia = int.parse(stdin.readLineSync()!);
  print("Digite o dia do seu aniversario: ");
  int mes = int.parse(stdin.readLineSync()!);
  print("Digite o dia do seu aniversario: ");
  int ano = int.parse(stdin.readLineSync()!);
  //formata dada de nacimento
  DateTime nascimento = DateTime(ano,mes,dia);
  //pega data atual
  DateTime hoje = DateTime.now();
  int idade = hoje.year - nascimento.year; //calcula idade
  if (hoje.month<nascimento.month) //verifica se esta aind nao chegou o mes d aniversario
  idade--;
  else if (hoje.month==nascimento.month){ // verifica se chegou o mes , mas o dia não
     if (hoje.day<nascimento.day)
        idade--; 
}
  var meses = 0;
  if(hoje.month<=nascimento.month) { 
    meses = nascimento.month - hoje.month; 
    meses = 12 - meses;
  }
  else if (hoje.month>nascimento.month){
    meses = nascimento.month - hoje.month; 
    meses = ((meses - 12 )*-1)-12;
  }
  
  var diasVividos = (365*idade)+(meses*30)+dia;
  print(diasVividos);
  
  
  
} 

