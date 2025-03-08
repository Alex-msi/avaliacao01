import 'dart:math';
import 'Figura.dart';

class Triangulo extends Figura{
  double face1;
  double face2;
  double face3;

  // Construtor
  Triangulo(int x, int y, this.face1, this.face2, this.face3) : super(x, y);

  // Método para verificar o tipo do triângulo
  void GetTipo() {
    if (face1 == face2 && face2 == face3) {
      print("Triângulo equilátero.");
    } else if (face1 == face2 || face2 == face3 || face1 == face3) {
      print("Triângulo isósceles.");
    } else {
      print("Triângulo escaleno.");
    }
  }

  // Sobrescrevendo
  @override
  double area() {
    double s = (face1 + face2 + face3) / 2;
    return sqrt(s * (s - face1) * (s - face2) * (s - face3));
  }
}

