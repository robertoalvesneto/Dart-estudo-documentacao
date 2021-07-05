/// Uma sequencia de variaveis do tipo que quisermos que podem ser acessadas
/// atraves de uma navegacao em sequencia - pegando um valor apos o outro - ou
/// acessando uma posicao especifica.
///
/// Uma lista eh um interable com uma implementacao eficiente para operacoes de
/// comprimento e de acessar um indice.
///
/// Procurei no sdk do github qual seria a implementacao mas nao encontrei.
/// Considerando o trecho da documentacao:
///   "keeps an internal buffer, and grows that buffer when necessary."
/// Eu suponho que a implementacao seja semelhante a do python, uma matriz
/// auxiliar que registra o endereco dos nos alocados dinamicamente, isso
/// permite acessar com tempo constante cada index sem que ela precise ser
/// estatica, com um pequeno custo de memoria para os ponteiros e de expandir
/// essa matriz de ponteiros quando acabar.
/// Pelo que entendi tambem definir diretamente o tamanho do lenght nao eh uma
/// boa ideia pois faz com que o buffer seja expandido toda vez que adicionar um
/// novo elemento (o bom funcionamento dessa implementacao depende do buffer ser
/// alterado poucas vezes).
///
/// Ela tambem possui uma implementacao estatica.
///
/// REFENCIAS:
/// https://github.com/dart-lang/sdk/blob/065872e802209ffa97aa3fad204758830b6100a0/sdk/lib/core/list.dart#L52
/// https://github.com/dart-lang/sdk/blob/f5a1dd57a10796b9adf7e34bc22f367e3817a60a/sdk/lib/internal/list.dart
class ExplicandoList {
  static void declarando() {
    var a = ["miojo", 12, 2.2, true];
    var b = [];
    List<int> c = [1, 2, 3];

    print(a);
    print(b);
  }

  /// -- CONSTRUTORES:
  /// Simplificacao feita: g = growable (define se eh dinamico ou nao),
  /// t = true e f = false
  ///
  /// List.empty({g = f})                 Cria uma lista vazia;
  /// List.filled(n, fill, {g = f})       Cria uma lista estatica de
  ///                                     comprimento N e preenche com F;
  /// List.generate(n, () {}, {g = t})    Cria uma lista de tam N com os
  ///                                     valores definidos na funcao;
  /// List.of(elements, {g = t})          Recebe iterable e retorna lista;
  /// List.unmodifiable(elements)         Recebe iterable e retorna lista nao
  ///                                      modificavel.
  static void construtores() {
    Map mapa = {'a': 1, 'b': 2, 'c': 3};

    var emptyList = List.empty();
    var filledList = List.filled(5, 0);
    var generateList = List.generate(10, (index) => index);

    // as um mapa ou a lista de suas chaves nao eh interavel
    var listOfInterable = List.of(mapa.keys);
    var listUnmod = List.unmodifiable(mapa.keys);

    print("\n\n>> CONSTRUTORES\n");
    print("List.empty(): ${emptyList}");
    print("List.filled(5, 0): ${filledList}");
    print("List.generate(10, (index) => index): ${generateList}");
    print("\nO mapa: ${mapa}");
    print("List.of(mapa.keys): ${listOfInterable}");
    print("List.unmodifiable(mapa.keys): ${listUnmod}");
  }

  /// -- PROPRIEDADES:
  ///
  ///    first           Primeiro elemento da lista;
  ///    last            Ultimo elemento da lista;
  ///    length          Numero de objetos da lista;
  ///    isEmpty         Se a string esta vazia;
  ///    isNotEmpty      Se a string nao esta vazia;
  ///    iterator        Retorna um interador com os elementos da lista;
  ///    reversed        Retorna um interador com os elementos da lista em
  ///                    ordem inversa;
  ///    single          Verifica se so tem um elemento e retorna ele.
  static void propriedades() {
    var lista = [1,2,3,4,5,6,7];

    print("\n\n>> PROPRIEDADES\n");
    print("lista: ${lista}");
    print("Primeiro ele: ${lista.first}");
    print("Ultimo ele: ${lista.last}");
    print("Inverso ${lista.reversed}");
  }

  /// -- OPERADORES:
  ///    +               Concatena listas e retorna uma nova;
  ///    ==              Compara listas elemento a elemento;
  ///    []              Pegar o valor em um index da lista;
  ///    []=             Seta um valor para o index;
  static void operadores() {
    var l1 = [1,2,3];
    var l2 = [4,5,6];

    print("\n\n>> OPERADORES\n");
    print("l1: ${l1}");
    print("l2: ${l2}");
    print("l1+l2: ${l1+l2}");
    l1[0] = 100;
    print("posi 0 de l1 modificada: ${l1}");
  }
}

void main() {
  ExplicandoList.operadores();
}
