// Crie um programa que mostra características sobre os seres vivos e implemente três classes,
// seguindo os requisitos de cada uma:
// Classe SerVivo: será uma classe abstrata que terá um método void mostrarCaracteristicas();.
// Planta: será uma classe que implementa SerVivo e terá os seguintes objetos e suas descrições de print:
// Girassol: é uma planta, não tem os cinco sentidos, é uma flor;
// Laranjeira: é uma planta, não tem os cinco sentidos, é uma árvore;
// Animal: é vivo e tem os cinco sentidos:
// Ser humano: tem cinco sentidos, pensa e fala, é bípede e vive em média 75 anos;
// Gato: tem cinco sentidos, mia, é quadrúpede e vive em média 20 anos;
// Cão: tem cinco sentidos, late, é quadrúpede e vive em média 20 anos.

abstract class SerVivo {
  String name;
  String tipo;
  bool cincoSentidos;

  void showFeatures() {
  }

  SerVivo( this.name, this.tipo, this.cincoSentidos);
}

class Planta extends SerVivo{

  @override
  void showFeatures() {
    print("$name: é uma $tipo, tem os cinco sentidos? $cincoSentidos");
  }

  Planta(super.name, super.tipo, super.cincoSentidos);
}

class Animal extends SerVivo {
  int tempoDeVida;
  String noise;
  @override
  void showFeatures() {
    print("$name: é $tipo, vive em média $tempoDeVida anos, tem cinco sentidos? $cincoSentidos, $noise.");
  }

  Animal(super.nome, super.tipo, this.tempoDeVida, super.cincoSentidos, this.noise);
}

void seresVivos () {
  SerVivo girassol = Planta("Girassol", "Flor", false);
  SerVivo laranjeira = Planta("Laranjeira", "Árvore", false);
  SerVivo humano = Animal("humano", "Bípede", 75, true,"pensa e fala");
  SerVivo dog = Animal("Dog", "Quadrúpede", 75, true, "late");
  SerVivo cat = Animal("Cat", "Quadrúpede", 75, true, "mia");

  List<SerVivo> seres = <SerVivo>[girassol, laranjeira, humano, dog, cat];

  for (SerVivo ser in seres) {
    ser.showFeatures();
  }
}
