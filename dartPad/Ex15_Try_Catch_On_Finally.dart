void main() async {
  
  // Imprime un mensaje indicando el inicio del programa
  print('Inicio del programa');
  
  try {
    // Llama de manera asíncrona a la función httpGet y espera a que se complete la ejecución
    final value = await httpGet('https://fernando-herrera.com/cursos');
    
    // Si la petición es exitosa, imprime el valor devuelto
    print( 'éxito: $value' );
    
  } on Exception catch(err) {
    // Captura cualquier excepción del tipo Exception y la imprime
    print('Tenemos una Exception: $err');
    
  } catch (err) {
    // Captura cualquier otro tipo de error que no sea de tipo Exception y lo imprime
    print('OOP!! algo terrible pasó: $err');
    
  } finally {
    // Este bloque siempre se ejecuta, ocurra o no una excepción, e imprime un mensaje
    print('Fin del try y catch');
  }
  
  // Imprime el mensaje indicando el fin del programa
  print('Fin del programa');
}

// Función que simula una petición HTTP y lanza una excepción después de un retardo
Future<String> httpGet( String url ) async {
  
  // Simula un retardo de 1 segundo para imitar una petición HTTP
  await Future.delayed( const Duration(seconds: 1));
  
  // Lanza una excepción de tipo Exception con un mensaje
  throw Exception('No hay parámetros en el URL');
  
 
}