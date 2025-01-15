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


void rodarExercicioItemEstoque() {
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

