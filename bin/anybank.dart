import 'package:anybank/conta.dart';
void main() {
  rodarExe();
}

void rodarExe() {// Cria dois objetos da classe Conta:
  ContaEmpresa contaAlvaro = ContaEmpresa("Alvaro", 2000); // contaAlvaro com titular "Alvaro" e saldo 1000.
  ContaInvestimento contaWelder = ContaInvestimento("Welder", 2000); // contaWelder com titular "Welder" e saldo 2000.
  ContaCorrente contaEdinho = ContaCorrente("Edinho", 4000);
  ContaPoupanca contaJessy = ContaPoupanca("Jessy", 3500);

  contaEdinho.imprimeSaldo();
  contaEdinho.enviar(4300);
  
  contaJessy.imprimeSaldo();
  contaJessy.enviar(4300);
  contaJessy.calculaRendimento();
  contaJessy.imprimeSaldo();

  contaAlvaro.enviar(1000);
  contaWelder.receber(1000);

}



