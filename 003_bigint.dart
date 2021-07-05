class ExplicandoBigInt {
  static void declarando() {
    //  BIGINT: valores arbitrariamente grandes. Eh alocado o espaco que for
    //  necessario para armazenar esse valor.
    //
    //  NAO EH FILHO DO OBJETO NUM
    //
    // -- CONSTRUTOR:
    //    BigInt.from(value)      passa o valor ali dentro para bigint
    BigInt val = BigInt.from(5111111111111111111);
  }

  static void metodos() {
    //  No geral possui os mesmos metodos, staticos e operadores que o int, entao
    //  vou listar so o que eh diferente 
    //
    // -- METODOS:
    //    pow(expo)     value^expo
    BigInt val = BigInt.from(5111111111111111111);
    print(val);
    print(val.bitLength);
    print(val.runtimeType);
  }
}
void main() {
  ExplicandoBigInt.declarando();
}