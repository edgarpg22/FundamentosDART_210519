void main() {
  //FUNCIONES
  //1. llamado de una función basica
  greetEveryone();
  //2. llamado de una función que retorna un valor
  //2.1 Si no deseamos almacenar el valor, se invoca normalmente
  print("Hoy es el dia numero ${getDayNumber()}");
  //2.2 Necesitamos almacenar el valor retornado para utilizar su valor en otras operaciones del programa
  final numeroDia = getDayNumber();
  print("En 3 dias estaremos a: ${(numeroDia+3)}");
  //3. llamado de una funcióbn con parametros
  print(greetSomeone("Edgar Pérez Garrido"));
  //3.1 y que pasa si intercambiamos?
  print(greetSomeone(45));
  print(greetSomeone(-15));
  print(greetSomeone(3.141516));
  print(greetSomeone(true));
  //3.2
  /*print(greetSomeoneTyped(45));
  print(greetSomeoneTyped(-15));
  print(greetSomeoneTyped(3.141516));
  print(greetSomeoneTyped(true));*/
  print(greetSomeoneTyped("Edgar Pérez"));
  //4. llamado de funciones con varios parametros posicionales
  /*Para este caso los parametros deben ser enviados en la posición exacta y segun DART ambos por defecto son obligatorios*/
  print(greetSomeoneHourOfDay("Edgar Pérez", 10));
  /*¿Que pasa si solo envio un parametro?
   * print(greetSomeoneHourOfDay(null, null));
   * print(greetSomeoneHourOfDay("Edgar Pérez"));
   * print(greetSomeoneHourOfDay(10));*/
  /*Analizando la función determinamos que la hora del dia puede ser
   * nulo y se puede definir con la hora actual del SO*/
  print(greetSomeoneHourOfDay("Edgar Pérez", null));
  print(greetSomeoneHourOfDay("Edgar PG", 10));
  
  /*5. Funciones lamda, anonimas, arrow functions, funciones flecha
   * Las funciones LAMDA, tambien conocidas como funciones anonimas
   * o funciones flecha, se ejecutan de manera simple y no frecuente
   * en la ejecucion de un programa o sistema, en DART estas funciones
   * solo pueden tener una sola instrucción para usar el operador =>*/
  final double costoTotal;
  var calculaTotalCarrito = (double productQuantity, double productPrice, double percentageDiscount) => (productQuantity* productPrice)*((100-percentageDiscount)/100);

  double cantidad = 3.180;
  double precio = 1725.10;
  double descuento = 8;
  print("""Costo del producto: ${precio}
  cantidad solicitada: ${cantidad}
  descuento definido ${descuento}
  --------------------------------------------------------------------
  Costo total: ${calculaTotalCarrito(cantidad, precio, descuento)}""");
  
  //6. llamado de una función con parametros nombrados
  print(infoCarListStatus(buyerName: "Salma"));
  //6.1 llamado de una función con los parametros en desorden posicional
  print(infoCarListStatus(buyerName: "Angel", amountCarList: 2588.55 ,status: "En espera del pago"));
}

//1.Funciones sin parametros y sin retorno de valor
greetEveryone()             // <--- dynamic
{
  print("Hola a todas y todos desde DART");
}
 //2. funciones que retornan valores
int getDayNumber()
{
  DateTime now = DateTime.now();
  return now.day;
}
//3. Funciones que requieren de almenos un parametro (sin tipificación)
String greetSomeone(personName)
{
  return "Hola, ${personName}";
}

//3.1 Función recibe parametros tipificados}
String greetSomeoneTyped(String personName)
{
  return "Hola, ${personName}";
}

//4. Funciones que recibe mas de un parametro
//int? - Puede ser vacio
//[] -Puede ser opcional
String greetSomeoneHourOfDay(String personName, int? hourDay)
{
  String greeting;
  //El operador ??= significa que si es nulo lo inicialice como, en caso de que tenga el valor ignora la instrucción
  hourDay ??= DateTime.now().hour;
  print("Hora: ${hourDay}");
  
  if(hourDay>= 6 && hourDay<12)
  {
    greeting = "Buenos Dias";
  }
  else if(hourDay>= 12 && hourDay<18)
  {
    greeting = "Buenos Tardes";
  }
  else
  {
    greeting = "Buenos Noches";
  }
  return "${greeting}, ${personName}";
}

//6. Funciones con parametros nombrados
String infoCarListStatus({required String buyerName, double amountCarList = 0.0, String status ="Selección de productos"})
{
  return "El carrito de compras de: ${buyerName}, tiene un total de : \$${amountCarList} y actualmente esta en estatus: ${status}";
}