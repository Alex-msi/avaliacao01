import '../Classes/Circulo.dart';
import '../Classes/Retangulo.dart';
import '../Classes/Triangulo.dart';
import '../Classes/Figura.dart';

void main() {
  // Criando uma lista para armazenar figuras
  List<Figura> figuras = [];

  // Adicionando figuras na lista
  figuras.add(Circulo(3, 4, 3));
  figuras.add(Retangulo(1, 2, 4, 4));
  figuras.add(Retangulo(9, 5, 7, 3));
  figuras.add(Triangulo(5, 6, 2, 3, 3));


  // Exibindo informações das figuras
  for (var figura in figuras) {
    print("\nCriado ${figura.runtimeType} em X=${figura.x}, Y=${figura.y}");
    print("Área: ${figura.area()}");

    if (figura is Circulo) {
      figura.Diametro();
    } else if (figura is Retangulo) {
      figura.IsQuadrado();
    } else if (figura is Triangulo) {
      figura.GetTipo();
    }
  }

  // Soma das áreas
  double areaTotal = 0;
  for (var figura in figuras) {
    areaTotal += figura.area();
  }

  print("\nÁrea total dos objetos: $areaTotal");
}
