import 'Figura.dart';

class Retangulo extends Figura {
  double largura;
  double comprimento;


  // Construtor
  Retangulo(int x, int y, this.largura, this.comprimento) : super(x, y);

  // Método para verificar se é um quadrado
  void IsQuadrado() {
    if (largura == comprimento) {
      print("Eh um quadrado!");
    } else {
      print("Nao eh um quadrado!");
    }
  }

  // Sobrescrevendo
  @override
  double area() {
    return largura * comprimento;
  }
}