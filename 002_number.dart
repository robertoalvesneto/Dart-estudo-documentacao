class ExplicandoNumber {
  static void declarando() {
    // NUM: Pai dos tipos int e double, aceita apenas desses dois valores.
    num val1 = 12;
    num val2 = 2.2;
    num inf = double.infinity;
    num negInf = double.negativeInfinity;
    num nan = double.nan;
  }

  static void popriedades() {
    // -- PROPRIEDADES:
    // Inteiros nunca sao infinitos, podemos usar essas propriedades com eles pois
    // elas sao definidas em num, e int herda essa propriedade, mas nao faz
    // sentido usar.
    num val1 = 12;
    num val2 = 2.2;
    num inf = double.infinity;
    num negInf = double.negativeInfinity;
    num nan = double.nan;

    print("\n\n>> PROPRIEDADES\n");
    print("inf is infinite: " + inf.isInfinite.toString());
    print("val2 is finite: " + val2.isFinite.toString());
    print("nan is NaN: " + nan.isNaN.toString());
    print("val1 is negative: " + val1.isNegative.toString());
    print("sign: " + val1.sign.toString());
  }

  static void operadores() {
    // -- OPERADORES:
    // --- retornam valores:
    //    /   divisao
    //    ~/  divisao truncada
    //    *   multiplicacao
    //    -   subtracao
    //    +   soma
    //    %   modulo
    //    -   negativo do numero quando posto antes dele
    // --- retornam booleano:
    //    <   menor que
    //    <=  menor ou igual que
    //    >   maior que
    //    >=  maior ou igual que
    //    ==  igual a
    num v1 = 3;
    num v2 = 5;
    num calc1 = (v1 + v2) * 10; // 80
    num calc2 = (v2 / v1);      // 1.666
    num calc3 = (v2 ~/ v1);     // 1
    bool calc4 = (v1 <= v2) == (v2 > v1); // true

    print("\n\n>> OPERADORES\n");
    print("(v1 + v2) * 10 = " + calc1.toString());
    print("(v2 / v1) = " + calc2.toString());
    print("(v2 ~/ v1) = " + calc3.toString());
    print("(v1 <= v2) == (v2 > v1) = " + calc4.toString());
  }

  static void metodos() {
    // -- METODOS:
    //    abs()               valor absoluto
    //    ceil()              arredonda para o maior inteiro mais prox do valor
    //    floor()             arredonda para o menor inteiro menor que o valor
    //    round()             o inteiro mais proximo desse numero
    //    truncate()          o inteiro obtido ao descatar os decimais
    //    ceilToDouble()      o ceil mas com .0
    //    floorToDouble()     o floor mas com .0
    //    roundToDouble()     o round mas com .0
    //    truncateToDouble()  o truncate mas com .0
    //    clamp(low, up)      se o valor tiver dentro do limite, retorna ele, se
    //                        menor, retorna o lower, se maior, retorna upper
    //    compareTo()         se menor, retorna -1, se igual, retorna 0 e se maior
    //                        retorna 1. Faz algumas comparações diferentes dos
    //                        operadores: (NaN compare Nan: 0)
    //                                    (-0.0 compare 0.0: -1)
    //                                    infinity > que todos os numeros
    //                                    -infinity < que todos os numeros
    //    remainder(other)    o mesmo que o operador ~/
    //    toDouble()          converte para double
    //    toInt()             converte para int
    //    toString()          converte para string
    //    toStringAxExponential(other)    representacao expo com 'other' casas dec
    //    toStringAsFixed(other)    limita as casas decimais para tam 'other'
    //    roStringPrecision(other)    numeros precisos significativos

    num v1 = -3.333;
    num v2 = 3.5;
    num val1 = 3.6;
    num val2 = 312345;
    print("\n\n>> METODOS\n");
    print("Valor abs de " + v1.toString() + ": " + v1.abs().toString());
    print("Valor ceil de " + v2.toString() + ": " + v2.ceil().toString());
    print("Valor floor de " + v2.toString() + ": " + v2.floor().toString());
    print("Valor round de " + v2.toString() + ": " + v2.round().toString());
    print("Valor truncate de " + v1.toString() + ": " + v1.truncate().toString());
    print("Valor clamp de " + v2.toString() + ": " + v2.clamp(1, 4).toString());
    print("Comparacao entre " + v1.toString() + "e " + v2.toString() + " : " + v1.compareTo(v2).toString());
    print("Valor " + val2.toString() + " para exponecial 2: " + val2.toStringAsExponential(2));
    print("Valor " + v1.toString() + " para 2 casas decimais: " + v1.toStringAsFixed(2));
    print("Valor 1234567890 com precisao 5: " + 1234567890.toStringAsPrecision(5));
  }

  static void metodosEstaticos() {
    // -- METODOS ESTATICOS:
    //    num.parse()       converte para int ou double e lanca um erro se nao der
    //    num.tryParse()    converte para int ou double e retorna null se nao der
    num v1 = -3.333;

    print("\n\n>> METODOS ESTATICOS\n");
    print("parse to int: " + num.parse(v1.toString()).toString());
    print("tryparse to int: " + num.tryParse('a'.toString()).toString());
  }
}


class ExplicandoDouble {
  // Herda de num, entao seus metodos e operacoes sao validos
  static void declarando() {
    // Valores com ponto flutuante
    double val1 = 12.0;
    double val2 = 12; //12.0
  }

  static void constantes() {
    // -- CONSTANTES:
    //    infinty               1.0/0.0
    //    maxFinite             1.7976931348623157e+308
    //    minPositive           5e-324
    //    nan                   0.0/0.0
    //    negativeInfinity      -1.0/0.0
    double inf = double.infinity;
    double negInf = double.negativeInfinity;
    double nan = double.nan;
  }
}

class ExplicandoInt {
  // Herda de num, entao seus metodos e operacoes sao validos
  static void declarando() {
    // Valores inteiros
  }

  static void propriedades() {
    // -- PROPRIEDADES:
    //    bitLenth    menor numero de bits necessarios para armazenar aquele int
    //    isEven      retorna true se o num for par
    //    isOdd       retorna true se o num for impar
    print("\n\n>> PROPRIEDADES\n");
    print("bitLenth of 12: " + 12.bitLength.toString());
  }

  static void metodos() {
    // -- METODOS:
    //    gcd(other)              retorna o maior divisor comum do value e other
    //    modInverse(module)      retorna o inverso multiplicativo modular
    //    modPow(expo, module)    value^expo modulo de module 
    //    toRadixStrin(other)     rescreve na base other
    print("\n\n>> PROPRIEDADES\n");
    print("maio divisor comum de 12 36: " + 12.gcd(36).toString());
    print("inverso de 3 mod 7: " + 3.modInverse(7).toString());
    print("12^2 modulo de 7: " + 12.modPow(2, 7).toString());
    print("9999 toRadixString 5: " + 9999.toRadixString(2));
  }

  // Esse objeto possui metodos e operadores para manipulacao de bits, nao os
  // descrevi aqui por nao ver finalidade pratica.
}

void main() {
  ExplicandoNumber.declarando();
}