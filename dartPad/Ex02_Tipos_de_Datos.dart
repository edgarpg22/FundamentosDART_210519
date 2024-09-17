void main() {
  //Practica 04: Tipos de Datos en dart
  //Cadenas (String)
  final String pokemon = "Pikachu";
  
  //Enteros(Int)
  final int hp = 100;
  //Booleano (Boolean)
  final bool isAlive = true;
  
  //Listas(List)
  final abilities = ['Impact-Trueno', 'Cola de Hierro','Aaque Rapido'];
  final sprites = <String>['Pikachu_front.png','Pikachu_back.png'];
  print (""" El pokemon que elegistees: $pokemon
  -------------------------------------------------------------------
  Las estadisticas de $pokemon son:
  vida (HP): $hp
  Estatus de vida: $isAlive
  Habilidades: $abilities
  Imagenes: $sprites
  """);
}
