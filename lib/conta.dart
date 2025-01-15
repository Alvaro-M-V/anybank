class Conta {
  String titular; // titular: Armazena o nome do dono da conta.
  double _saldo;  // saldo: Representa o saldo da conta bancária.

  Conta(this.titular, this._saldo);
  //Construtor: A linha Conta(this.titular, this.saldo); cria objetos da classe Conta, exigindo o nome do titular e o saldo inicial.

  void receber(double valor) {
    _saldo += valor;
    imprimeSaldo();
  }

  void enviar(double valor) {
    if (_saldo >= valor) {
    _saldo -= valor;
    imprimeSaldo();
    }
  }

  void imprimeSaldo() {
    print("O saldo atual de $titular, é: R\$$_saldo");
  }
}





class ContaCorrente extends Conta {
  double emprestimo = 300;

  ContaCorrente(super.titular, super.saldo);

  @override
  void enviar(double valor) {
    if (_saldo + emprestimo >= valor) {
      _saldo -= valor;
      imprimeSaldo();
    }
    super.enviar(valor);
  }
}

class ContaPoupanca extends Conta {
  double rendimento = 0.05;

  ContaPoupanca(super.titular, super.saldo);  

  void calculaRendimento() {
    _saldo += _saldo * rendimento;
  }
}

