void main() {
  
  // Llama a la función emitNumbers() que devuelve un Stream y escucha los valores emitidos.
  // Cada vez que el Stream emite un valor, se ejecuta la función anónima que imprime el valor.
  emitNumbers().listen( (value) {
    print('Stream value: $value');
  });
  
}


Stream<int> emitNumbers() {
  
  // Retorna un Stream que emite valores enteros periódicamente.
  // Stream.periodic genera un nuevo valor cada 2 segundos (definido por Duration).
  return Stream.periodic( const Duration(seconds: 2), (value) {
    
    // Cada vez que se genera un valor en el Stream, se devuelve el número actual.
    // En este caso, 'value' es el número de iteraciones (0, 1, 2, etc.).
    return value;
    
  // El método .take(5) limita el Stream a emitir solo los primeros 5 valores.
  }).take(5);
  
}