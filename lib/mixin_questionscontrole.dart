mixin ControleAcesso {
  bool verificarPermissaoAdmin(String papel) {
    return papel == "admin";
  }
  void executarOperacao(String papel, Function operacao) {
    if (verificarPermissaoAdmin(papel)) {
      operacao();
    } else {
      print("Acesso negado");
    }
  }
}


class ServicoUsuario with ControleAcesso {

  void deletarUser() {
    executarOperacao("admin", () => print("usuário deletado")); // () => print('')/função anônima de execução simples.
  }                                                            // () => → Indica que a função não recebe parâmetros.   
}
  
class ServicoProduto with ControleAcesso {

  void adcionarProduto() {
    executarOperacao("admin", () => print("produto adicionado"));
  }
}  