void main() {
  // OBJECT: Objeto base para todos os outros objetos, exceto o 'null'.
  // Ele consegue armazenar qualquer outro valor.
  Object a = 'a'; // forma 1 de declarar
  print('hashCode of var a: ' + a.hashCode.toString() + '\n');

  var b = new Object(); // forma 2 de declarar
  print("value of var b: " + b.toString());
  print("Run time type of var b: " + b.runtimeType.toString());
  b = 12;
  print("value of var b: " + b.toString());
  print("Run time type of var b: " + b.runtimeType.toString());
  b = 2.2;
  print("value of var b: " + b.toString());
  print("Run time type of var b: " + b.runtimeType.toString());

  // Mesmo a variavel 'b' sendo do tipo double, nao podemos usar o metodo 'abs'
  // pois ele está definido no objeto filho 'num' e nao em object. 
  // print(b.abs()); XXXX
}