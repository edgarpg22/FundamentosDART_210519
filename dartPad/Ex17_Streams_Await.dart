void main() {
  
  // Llama a la función emitNumber(), que devuelve un Stream asíncrono.
  // Se escucha el Stream y se imprime cada valor emitido.
  emitNumber().listen( (int value) {
    print( 'Stream value: $value' );
  });
}


Stream<int> emitNumber() async* {
  
  // Lista de valores que el Stream emitirá
  final valuesToEmit = [1, 2, 3, 4, 5];
  
  // Bucle que recorre cada valor en la lista
  for( int i in valuesToEmit ) {
    
    // Espera 1 segundo antes de emitir el siguiente valor
    await Future.delayed( const Duration(seconds: 1));
    
    // Emite el valor actual 'i' al Stream
    yield i;
  }
}