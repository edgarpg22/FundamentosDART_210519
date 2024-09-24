void main() {
  //Declarando una variable generica para almacenar mi nombre
  var myName = 'Edgar';
  String myLastName = 'Pérez';
    final int myDNI = 210519;
    late final int myAge;
  //Corregir mi Nombre
  myName = 'Edgardo';
  //myDNI = 210520; Esto ocaciono un error porque la variable esta definida como final y no puede actualizar su valor.
  
  
  print('\nHola $myName $myLastName mi matricula es $myDNI y tu edad aun no la conozco, porque no se cuando naciste.');
  //interpolando el valor de las variables con metodos de manipulacion o transformacion
  print('Hola, ${myName.toUpperCase()} ${myLastName.toUpperCase()} mi matricula es $myDNI y tu edad aun no la conozco, porque no se cuando naciste.');
}