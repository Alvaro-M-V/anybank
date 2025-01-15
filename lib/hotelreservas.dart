// class Cliente {
//   String? nomeDoCliente;
//   List<String> _quartosReservados;

//   Cliente(this.nomeDoCliente, this._quartosReservados);

//     void fazerReserva(String quarto) {
//       _quartosReservados.add(quarto);
//       _mostrarReservas();
//   }

//     void _mostrarReservas() {
//       print(_quartosReservados);
//   }
//     void desfazerReserva(String quarto) {
//       if (_quartosReservados.contains(quarto)) {
//         _quartosReservados.remove(quarto);
//         _mostrarReservas();
//     }
//   }
// }

// void hotel() {
//   Cliente cliente = Cliente('Joaquim', []);
//   cliente.fazerReserva('101');
//   cliente.fazerReserva('102');
//   cliente.fazerReserva('103');
//   cliente.desfazerReserva('102');
// }

// Código corrigido
abstract class Documento {
  String nomeDoDocumento;
  
  Documento(this.nomeDoDocumento);

  void imprimir();
}

class Relatorio extends Documento {
  Relatorio(super.nomeDoDocumento);
  
  @override
  void imprimir() {
    print('O $nomeDoDocumento foi enviado para impressão');
  }
}

void main() {
  Documento relatorio = Relatorio('Relatório Anual'); // Correção: Instanciando a classe concreta
  relatorio.imprimir();
}