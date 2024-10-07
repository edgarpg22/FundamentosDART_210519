void main(){
  final mySquare = Square(side:10);

  mySquare.side = -5;
  
  print("El area es igual a: ${mySquare.area}");
}

class Square {
  double _side;

  Square({ required double side })
    : assert(side >= 0, 'El valor del lado debe ser mayor a 0'),
    _side = side;

  double get area {
      return _side * _side;
  }

  set side(double value){
    print("Asignando un nuevo valor de lado $value");
      if (value < 0) throw 'El valor del lado debe ser mayor a 0';
    _side = value;
  }

  double calculateArea() {
  return _side * _side;
  }
}