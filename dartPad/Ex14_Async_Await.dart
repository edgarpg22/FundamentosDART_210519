
void main() async {
  
  // Imprime el mensaje indicando el inicio del programa
  print('Inicio del programa');
  
  try {
    // Llama a la función httpGet de manera asíncrona, esperando a que se resuelva la petición
    // y asigna el resultado a la variable 'value'
    final value = await httpGet('https://fernando-herrera.com/cursos');
    
    // Si no hay error, imprime el valor obtenido de la función httpGet
    print( value );
    
  } catch (err) {
    // Si ocurre un error durante la ejecución del código dentro de 'try', lo captura e imprime
    print('Tenemos un error: $err');
  }
  
  // Imprime el mensaje indicando el fin del programa
  print('Fin del programa');
}

// Función asíncrona que simula una petición HTTP a la URL proporcionada
Future<String> httpGet( String url ) async {
  
  // Simula un retardo de 1 segundo antes de continuar la ejecución
  await Future.delayed( const Duration(seconds: 1));
  
  // Lanza un error simulando que hubo un fallo en la petición HTTP
  throw 'Error en la petición';

}