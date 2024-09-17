void main() {
  // Practica 05: Tipos de datos dinamico
  dynamic errorMessage;
  
  print(""" El valor inicial de errorMessage es: $errorMessage
  Al ser dinamico permite la asignación de valores nulos""");
  
  errorMessage = "El usuario y la contraseña no coinciden";
  print(""" ----------------------------------------------------
   El nuevo valor de errorMessage es: $errorMessage
  Ahora le hemos asignado un valor String""");
  
  errorMessage = 404;
  print(""" ----------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  En algunos sistemas los errores son controlados por un código numerico""");
  
  errorMessage = false;
  print(""" ----------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  Cuando el sistema funciona correctamente el mensaje de error puede ser falso""");

  errorMessage = [400,404,500,502,505];
  print(""" ----------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  En caso de que el sistema detecte varios errores podría agregarlos a una lista""");
  
  errorMessage = {125,"Usario no encontrado", true, -1025.16, 'A'};
  print(""" ----------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  O incluso como un conjunto (SET) de datos """);
  
  errorMessage = () => true;
  print(""" ----------------------------------------------------
  El último valor de errorMessage es: $errorMessage
  Que en este caso es el resultado de una función """);
}
