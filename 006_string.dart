class ExplicandoString {
  //  STRING: usadas para representar texto, eh resultado de uma cadeia de
  //  caracteres, fazendo com que uma string possa ser imaginada como um vetor
  //  especial que lida com caracteres.
  //  A maioria dos simbolos do dia a dia que usamos sao representados por uma
  //  unidade de codigo, mas simbolos mais complexos, tipo emotis, desenhos ou
  //  caracteres de outras linguas, podem requerer mais.

  static void declarando() {
    //  Uma string pode ser escrita com aspas simples ou aspas duplas, a que foi
    //  usada para abrir eh a que deve ser usada para fechar, logo, podemos usar
    //  a outra dentro do texto sem problemas.
    //  Multiplas linhas de string usam tres aspas.
    String nome = 'roberto';
    var linha = 'exemplo qualquer "de" texto';
    var texto = '''string
    de
    multiplas
    linhas''';
  }

  static void construtores() {
    // -- CONSTRUTORES:
    //    String.fromCharCode()       construtor de char a partir do codigo
    //    String.fromCharCodes()      construtor de string a partir dos codigos
    print("\n\n>> CONSTRUTORES\n");
    print("String a partir dos codigos [114, 111, 98, 101, 114, 116, 111]: " +
        String.fromCharCodes([114, 111, 98, 101, 114, 116, 111]));
  }

  static void operadores() {
    //  As strings sao imutaveis, entao as operacoes de concatenacao e outros
    //  metodos retornam strings novas.
    // -- OPERADORES:
    //    +     concatenacao de strings;
    //    []    indica a posicao que deseja acessar;
    //    *     concatena uma string n vezes;
    //    ==    compara se tem as mesmas sequencias de unidades de codigos.

    var nomeCompleto = 'roberto' + ' alves' + ' neto'; // 'roberto alves neto'
    var caractereUnico = nomeCompleto[0]; // letra 'r'
    var mult = '92 ' + '9' * 4 + '-' + '9' * 4; // '92 9999-9999'
    bool seIguais = nomeCompleto == 'roberto alves neto'; // true
  }

  static void propriedades() {
    // -- PROPRIEDADES:
    //    codeUnits       unidades de codigo de cada caractere
    //    hashCode        hash code das unidades de codigo da string
    //    isEmpty         se a string esta vazia
    //    isNotEmpty      se a string nao esta vazia
    //    lenght          quantidade de caracteres UTF-16 da string, um unico
    //                    caractere pode ser representado por duas unidades de
    //                    codigo se estiver em um padrao a cima do UTF-16, nesse
    //                    caso seria bom analisar o lenght das runas.
    //    runes           combina subpartes que nao sao validas no UTF-16
    var texto = "abcd\u{1D11E}";
    var runes = texto.runes.toString();
    var quantRunes = runes.length.toString();
    var codeUnits = texto.codeUnits.toString();
    var quantCodeUnits = codeUnits.length.toString();
    print("\n\n>> PROPRIEDADES\n");
    print("A string '" + texto + "\:");
    print("    esta vazia: " + texto.isEmpty.toString());
    print("    nao esta vazia: " + texto.isNotEmpty.toString());
    print("    tem comprimento " +
        quantCodeUnits +
        " e as unidades de codigo " +
        codeUnits);
    print("    tem comprimento " + quantRunes + " e as runas " + runes);

    print("Unidades de codigo:");
    print(
        "    [55348, 56606]: " + String.fromCharCodes([55348, 56606]));
    print("    [119070]: " + String.fromCharCode(119070));
  }

  static void metodos() {
    // -- METODOS:
    //
    //    o [] define parametros opcionais. [si] significa start index, quando
    //    a analise pode iniciar em uma posicao.
    //
    //    allMatches(string)      Buscamos um padrao dentro da string e retorna
    //                            todos os matches que tivemos, entao temos que
    //                            percorrer eles;
    //    compareTo(str)          Compara duas strings;
    //    codeUnitAt(indice)      Unidade de codigo em uma posicao;
    //    contains(patt, [si])    Compara se o padrao dentro do parenteses esta
    //                            contido na string. Retorna um bool com a resp;
    //    startsWith(str, [si])   Se uma string comeca com a outra;
    //    endsWith(str)           Se uma string termina com a outra;
    //    indexOf(patt, [si])     Index do primeiro encontro do padrao, ou -1 se
    //                            nao encontrar;
    //    lastIndexOf(patt, [si]) Index do inicio da ultima ocorrencia do padrao.
    //    padLeft(width, [str])   Preenche a esquerda com string ate a string ter
    //                            o tamanho width;
    //    padRight(width, [str])  Mesma cosia de cima so que para direita;
    //    toLowerCase()           Tudo minusculo;
    //    toUpperCase()           Tudo maisculo;
    //    trim()                  Remove espacos a esq e dir;
    //    trimLeft()              Remove espacos a esq;
    //    trimRight()             Remove espacos a dir;
    //    subString(start, [end]) Recorta a string nos espacos determinados;
    //    split(patt)             Recorta a string sempre que achar pattern,
    //                            retorna uma lista com todas as strings;
    //    splitMapJoin(patt, onMatch, onNoMatch)  busca o pattern e aplica a
    //                            arrow function correspondente se achou ou nao;
    //    replaceAll(x, y)        troca todas as ocorrencias de x por y;
    //    replaceAllMapped(x, map)  substitui todas as ocorrencias de x pela
    //                              funcao colocada dentro de 'map';
    //    replaceFirts(x, y, [si])  substitui a primeira ocorrencia de x por y;
    //    replaceFirstMapped(x, y, [si])  substitui todas as ocorrencias de x
    //                                    pela funcao colocada dentro de 'map';
    //    replaceRange(s, e, x)   substitui a string de s (start) ate e (end)
    //                            por x;
    
    print("\n\n>> METODOS");

    print("\n>>> .allMatches():");
    String strNum = "This string has numbers 123456 and 78910 numbers";
    final iReg = RegExp(r'(\d+)');
    print('"$strNum"');
    print('    ocorrencias de "numbers" na string: ' +
        'numbers'.allMatches(strNum).map((m) => m.group(0)).toString());
    print('    ocorrencias de numeros na string: ' +
        iReg.allMatches(strNum).map((m) => m.group(0)).toString());

    print("\n>>> .padLeft():");
    var nome1 = 'roberto';
    var idade1 = '21';
    var nome2 = 'joao';
    var idade2 = '21';
    var nomeCompleto = 'roberto alves neto';
    int tam = 40;
    print('nome' + 'idade'.padLeft(tam - 4 + 3));
    print(nome1 + idade1.padLeft(tam - nome1.length));
    print(nome2 + idade2.padLeft(tam - nome2.length));

    print("\n>>> .substring():");
    print("recortando sobrenome: " + nomeCompleto.substring(7, 13));

    print("\n>>> .indexOf():");
    print("index de 'neto': " + nomeCompleto.indexOf('neto').toString());

    print("\n>>> split():");
    print("split do nome: " + nomeCompleto.split(' ').toString());

    print("\n>>> replaceAll():");
    print("replace espacos por _ do nome: " + nomeCompleto.replaceAll(' ', '__'));

    print("\n>>> .splitMapJoin():");
    var a = 'Eats shoots leaves'.splitMapJoin((RegExp(r'shoots')),
        onMatch: (m) => '${m[0]!}', onNonMatch: (n) => '*');
    print(a);

    print("\n>>> .trim():");
    var texto = "    dawda dawda    ";
    print(texto + '<TERMINOU AQUI>');
    print(texto.trim() + '<TERMINOU AQUI>');

    print("\n>>> toUpperCase():");
    print(texto);
    print(texto.toUpperCase());
  }
}

void main() {
  //ExplicandoString.propriedades();
  ExplicandoString.metodos();
}