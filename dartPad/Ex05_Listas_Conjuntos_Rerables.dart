void main() {
  //Ladeclaracion de una list exta limitada por corchetes (brackets) y cada elemento de ser individual y puede repetirse.
  final numeros = [1, 2, 2, 2, 3, 4, 5, 6, 7, 7, 7, 7, 8, 8, 9, 10];
  print("Ejemplos de list $numeros:");
  print(
      "Confirmamos el tipo de dato para numeros que es: ${numeros.runtimeType}");
  print("Podemos acceder a cierta informacion de una lista tal como: ");
  print("El tamaño: ${numeros.length}");
  print("""
  Para acceder a los elementos debemos especificar la posiscion entre []
  El primer elemento en la primera posicion es: ${numeros[0]}
  El elemento enla segunda posicion es: ${numeros[1]}, siempre respentando el posicion-1
  El ultimo elemento de la lsita seria: ${numeros[numeros.length - 1]}
  -------------------------------------------------------------
  De igual manera existen las siguientes alternativas
  Primer elemento ${numeros.first}
  Ultimo elemento${numeros.last}
  -----------------------------------------
  Tambien tendremos acceso a algunos metdodos que permitan la transformacion o filtrado del contenido 
  Por ejemplo usar reserved, para invertir el orden original: ${numeros.reversed}
  Es importante observar que la funcion reversed ha transformado la LIST original y la retorna como un ITERABLE,
  """);

  //Iterables(Iterables)
  final numerosAlreves = numeros.reversed;
  print(
      "Los iterables son estructuras de datos que DART y otros lenguajes para optimizar en termino de      velocidad el accesio a los datos y propiedades");
  print("Ejemplo de in interable: $numerosAlreves");

  print(
      "Confirmamamos el tipo de dato para NUMEROSALREVES que es: ${numerosAlreves.runtimeType}");
  print("De igual manera podemos transormar una LISTA en ITERABLE y viceversa");
  print(
      "Convertimos el ITERABLE a LIST usando .toList(): ${numerosAlreves.toList()} y verificamos su tipo de dato ${numerosAlreves.toList().runtimeType}");

  //conjunto de datos(SET)
  //uN set ES UNA ESTRUCTURA DE DATOSN UTILIZADA POR dart, QUE SIMPLIFICA LOS ELEMENTOS ELIMINANDO LOS DUPLICADOS
  print("""Veamos que pasa con los conjuntos (SET)
  cONVERTIMOS EL iterable ES UN set USANDO.TOsET:${numerosAlreves.toSet()}
  Podemos visualizar en el resultado que el SET a eliminado los duplicados y ahora delimita usando los datos usando {}.
  """);

  //De igual manera podemos realizar operaciones para el filto de elementos usando .where()

  final numerosMayoresA5 = numeros.where((int num) {
    return num > 5;
  });
  print("""Hemos filtrado sobre la LIST solo los lelemntos mayores a 5:
  Resultado de Filtro: ${numerosMayoresA5}""");
  print("Eliminando duplicados... ${numerosMayoresA5.toSet()}");
}
