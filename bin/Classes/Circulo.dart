import 'dart:math';
import 'Figura.dart';

class Circulo extends Figura {
  double raio;

  // Construtor
  Circulo(int x, int y, this.raio) : super(x, y);

  // Método para calcular o diâmetro
  void Diametro() {
    print("Diametro: ${2 * raio}");
  }

  // Sobrescrevendo
  @override
  double area() => pi * pow(raio, 2);
}
