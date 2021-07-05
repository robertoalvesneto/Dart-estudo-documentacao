class ExplicandoNull {

  static declarando() {
    // NULL: unica instancia de sua classe. Unica classe que nao implementa
    // Object
    var a = null;
    var b = 12;
  }

  static operadores() {
    //  -- OPERADORES:
    //    a!          lança erro se a for nulo
    //
    //  O '?' analisa se eh ou nao nulo e faz as coisas a partir dai
    //    a ?? b      se o primeiro for nulo, retorna b, se nao, retorna a
    //    a?.foo()    chama a funcao so se a nao for nulo
    //    x ??= b     o mesmo que x, a nao ser que x seja nulo, ai recebe b
    var a = null;
    var b = 12;
    a ??= b;
    print(a);
  }
}

void main() {
  ExplicandoNull.operadores();
}