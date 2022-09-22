import 'Conta.dart';

void main(List<String> args) {
  var conta1 = Conta(1089, "Gustavo Pedrosa", 100.0, 100.0);
  var conta2 = Conta(1090, "João Renato", 100.0, 100.0);

  print("Casos de teste para validação das funcionalidades: ");
  print("Condição inicial: ");
  conta1.tString();

  print("Operação Saque 50");
  conta1.sacar(50.00);
  conta1.imprimeSimples();

  conta1.deposito(50.00);

  print("Operação Saque 150");
  conta1.sacar(150);
  conta1.imprimeSimples();

  conta1.deposito(150.00);

  print("Operação Saque 250");
  conta1.sacar(250);
  conta1.imprimeSimples();
  print("___________________________________________________________________");

  print("Casos de teste para Transferência entre contas");
  print("Condição inicial: ");
  conta1.tString();
  conta2.tString();

  print("Operação transferencia conta 1 -> conta 2 : R\$50");
  conta1.transferir(conta2, 50);

  conta1.deposito(50.00);
  conta2.sacar(50.00);

  print("Operação transferencia conta 1 -> conta 2 : R\$150");
  conta1.transferir(conta2, 150);

  conta1.deposito(150.00);
  conta2.sacar(150.00);

  conta1.tString();
  conta2.tString();

  print("Operação transferencia conta 1 -> conta 2 : R\$150");
  conta1.transferir(conta2, 250);
}
