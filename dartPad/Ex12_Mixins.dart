abstract class Animal{}
abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin Volador {
  void volar() => print('Estoy volando!');
  void planear(int distanciaMaxima) => print("Este animal puede planear hasta: ${distanciaMaxima} segundos");
  void ascender(double alturaMaxima) => print ('Este animal puede ascender hasta una altura de ${alturaMaxima} mts. sobre el nivel del mar.');
  void descender(String velocidadMaxima) => print ('Este animal puede desender hasta una velocidad de hasta ${velocidadMaxima}');
}
mixin Caminante {
  void caminar() => print('Estoy caminando!');
  void correr(double distanciaMaxima) => print("Este animal puede correr hasta: ${distanciaMaxima} km/h.");
  void trotar(bool trotar) => print ('Este animal puede trotar: ${trotar}');
  void saltar(bool saltar) => print ('Este animal puede saltar: ${saltar}');
}
mixin Nadador {
  void nadar() => print('Estoy nanando!');
  void sumergir(double distanciaMaxima) => print("Este animal puede sumergir hasta: ${distanciaMaxima} mts.");
  void respirar(bool respirar) => print ('Este animal necesita salir a respirar a la superficie: ${respirar}');
}

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante, Volador{}
class Pato extends Ave with Caminante, Volador, Nadador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

void main() {
  final flipper = Delfin ();
  print("Instanciando la clase Delfin, y accediendo a sus funciones.");
  flipper.nadar();

  print("------------------------------------------------------------------");
  print("Instanciando la clase de Murcielago, y accediendo a sus funciones.");
  final chupacabras = Murcielago();
  chupacabras.caminar();
  chupacabras.volar();

  print("------------------------------------------------------------------");
  print("Instanciando la clase de Pato, y accediendo a sus funciones.");
  final pekines = Pato();
  pekines.caminar();
  pekines.planear(100);
  pekines.ascender(30);
  pekines.descender("5 km/h");
  pekines.volar();
  pekines.nadar();

  print("------------------------------------------------------------------");
  print("Instanciando la clase de Paloma, y accediendo a sus funciones.");
  final nicobar = Paloma();
  nicobar.caminar();
  nicobar.planear(30);
  nicobar.ascender(100);
  nicobar.descender("100 mts.");
  nicobar.volar();
  nicobar.trotar(false);
  nicobar.saltar(true);
 

  print("------------------------------------------------------------------");
  print("Instanciando la clase de Tiburon, y accediendo a sus funciones.");
  final goblin = Tiburon();
  goblin.nadar();
  goblin.sumergir(1200);
  goblin.respirar(false);
}