import 'package:anybank/animal.dart';
import 'package:anybank/conta.dart';

void main() {
 seresVivos();
}
void rodarExe() {// Cria dois objetos da classe Conta:
  Conta contaAlvaro = Conta("Alvaro", 1000); // contaAlvaro com titular "Alvaro" e saldo 1000.
  Conta contaWelder = Conta("Welder", 2000); // contaWelder com titular "Welder" e saldo 2000.
  ContaCorrente contaEdinho = ContaCorrente("Edinho", 4000);
  ContaPoupanca contaJessy = ContaPoupanca("Jessy", 3500);

  List<Conta> contas = <Conta>[contaAlvaro, contaWelder];//Cria uma lista de contas contendo contaAlvaro e contaWelder

  for (Conta conta in contas){ //Percorre a lista de contas e imprime o titular e o saldo de cada conta.da
    conta.imprimeSaldo();  
  }

  contaWelder.receber(3000);//O saldo de contaWelder é atualizado para 5000.
  contaAlvaro.receber(500);
  contaAlvaro.enviar(200);

  contaEdinho.imprimeSaldo();
  contaEdinho.enviar(4300);
  
  contaJessy.imprimeSaldo();
  contaJessy.enviar(4300);
  contaJessy.calculaRendimento();
  contaJessy.imprimeSaldo();
}



