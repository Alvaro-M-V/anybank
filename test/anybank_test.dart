
// void main() {
//   Receita comidaMacarraoAoPeso = Receita("Macarrão ao pesto", 20.00);
//   Receita comidaLasanha = Receita("Lasanha 4 queijos", 32.00);
//   Receita comidaBurrata = Receita("Burrata com pesto", 28.00);

//   List<Receita> comidas = <Receita>[comidaMacarraoAoPeso, comidaLasanha, comidaBurrata];
//   for (Receita comida in comidas) {
//     print(comida.nome);
//     print(comida.preco);
//   }
// }


// class Receita {
//   String nome;
//   double preco;

//   Receita(this.nome, this.preco);
// }


// class ItemEstoque {
//   String nome;
//   double quantidade;
//   int retirar;
//   int adicionar;

//   ItemEstoque(this.nome, this.quantidade, this.retirar, this.adicionar);
// }


// void main() {
//   ItemEstoque itemSmartphone = ItemEstoque("Smartphone", 100, 0, 20);
//   ItemEstoque itemNotebook = ItemEstoque("Notebook", 50, 10, 0);

//   List<ItemEstoque> items = <ItemEstoque>[itemSmartphone, itemNotebook];
//   for (ItemEstoque item in items) {
//     print("Nome:");
//     print(item.nome);
//     print("Quantidade:");
//     print(item.quantidade);
//     print("retirar");
//     print(item.retirar);
//     print("adicionar");
//     print(item.adicionar);
//   }
// }

class ItemEstoque {
  String nome;
  double quantidade; 
  double preco;


  void registrarEntrada(int acrescimo) {
    quantidade += acrescimo;
  }

  void registrarSaida(int retirada) {
    if (quantidade >= retirada) {
      quantidade -= retirada;
    } else {
      print('Quantidade insuficiente em estoque para realizar a saída.');
    }
  }

  void mostrarDetalhes() {
    print('Produto: $nome, Quantidade em estoque: $quantidade, Preço $preco Reais');
  }

  ItemEstoque(this.nome, this.quantidade, this.preco);
}


void main() {
  ItemEstoque itemSmartphone = ItemEstoque("Smartphone", 100, 1750);
  ItemEstoque itemNotebook = ItemEstoque("Notebook", 50, 3000);
  ItemEstoque itemTv = ItemEstoque("TV", 30, 2500);
  ItemEstoque itemTablet = ItemEstoque("Tablet", 70, 1600);
  ItemEstoque itemControle = ItemEstoque("Controle", 200, 600);

  //registrar entrada e retirada de produtos aqui!!!(mudar nome caso necessário)
  itemSmartphone.registrarEntrada(20);
  itemNotebook.registrarSaida(10);
  itemTv.registrarEntrada(0);
  itemTablet.registrarEntrada(0);
  itemControle.registrarEntrada(0);
  

  List<ItemEstoque> items = <ItemEstoque>[itemSmartphone, itemNotebook, itemTv, itemTablet, itemControle];
  for (ItemEstoque item in items) {
    item.mostrarDetalhes();
  }
}

