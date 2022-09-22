class Conta {
  int? _identificadorConta;
  String? _nome;
  double? _saldo;
  double? _limiteDeCredito;

  Conta(int _identificadorConta, String _nome, double _saldo,
      double _limiteDeCredito) {
    this._identificadorConta = _identificadorConta;
    this._nome = _nome;
    this._saldo = _saldo;
    this._limiteDeCredito = _limiteDeCredito;
  }

  get identificadorConta => this._identificadorConta;

  set identificadorConta(value) => this._identificadorConta = value;

  get nome => this._nome;

  set nome(value) => this._nome = value;

  get saldo => this._saldo;

  set saldo(value) => this._saldo = value;

  get limiteDeCredito => this._limiteDeCredito;

  set limiteDeCredito(value) => this._limiteDeCredito = value;

  double deposito(double valorDepositado) {
    if (this.saldo >= 0) {
      this.saldo += valorDepositado;
    } else {
      this.limiteDeCredito += this.saldo.abs();
      this.saldo += valorDepositado;
    }
    return valorDepositado;
  }

  double sacar(double valorSacado) {
    if (valorSacado <= saldo) {
      saldo -= valorSacado;
      return valorSacado;
    } else if (valorSacado <= saldo + limiteDeCredito) {
      double tempQuantia = valorSacado;
      tempQuantia -= saldo;
      saldo -= valorSacado;
      limiteDeCredito -= tempQuantia;
      return valorSacado;
    } else if (saldo <= 0 && valorSacado <= limiteDeCredito) {
      limiteDeCredito -= valorSacado;
      saldo -= valorSacado;
      return valorSacado;
    } else {
      print("Saldo Insuficiente");
      return 0;
    }
  }

  void imprimeSimples() =>
      print("Saldo: ${this.saldo}, Limite: ${this.limiteDeCredito}\n");

  void tString() => print(
      "Identificador da Conta: ${this._identificadorConta} Nome do Titular: ${this._nome} Saldo: ${this._saldo} Limite: ${this._limiteDeCredito}\n");

  void transferir(var conta, double transferencia) {
    this.saldo -= sacar(transferencia);
    conta.deposito(transferencia);
    print(
        "Saldo conta 1: ${this.saldo}, cheque: ${this.limiteDeCredito}\nSaldo conta 2: ${conta.saldo}, cheque: ${conta.limiteDeCredito}\n");
  }
}
