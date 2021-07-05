class ExplicandoBool {
  static void declarando() {
    // BOOL: assume apenas os valores true e false.
    bool a = true;
    bool b = true;
    bool c = false;
  }

  static void operadores() {
    // -- OPERADORES:
    //    !     retorna o valor oposto
    //    ==    veriica se sao iguais
    //    !=    verifica se sao diferentes
    //    ^     
    //    &&    retorna true se ambos forem verdadeiros
    //    ||    retorna true se algum for verdadeiro
    //    ^     retorna true se ambos forem diferentes
    bool a = true;
    bool b = true;
    bool c = false;
    
    print("((true == true) && (true != false)): " + ((a == b) && (a != c)).toString());
    print("(true ^ false): " + (a ^ c).toString());
  }
}

void main() {
  ExplicandoBool.operadores();
}