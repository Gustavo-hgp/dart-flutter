void main() {
  var alunos = [
    {'Camila': 'Camila@gmail.com', 'nota': 7.9},
    {'Gustavo': 'Pedrosa@gmail.com', 'nota': 8.3},
    {'Bruna': 'Mariana@gmail.com', 'nota': 7.7},
    {'Fagner': 'Guilherme@gmail.com', 'nota': 3.1},
    {'Marcos': 'Ana@gmail.com', 'nota': 5.4},
    {'Breno': 'Ricardo@gmail.com', 'nota': 8.8},
  ];

  Map<String, String> FinalMap = {};

  var finais = alunos
      .map((aluno) => aluno['nota'])
      .map((nota) => (nota as double).roundToDouble());

  var total = finais.reduce((t, a) => t + a);

  var media = total / finais.length;

  print('Média: ${media.toStringAsFixed(2)}');

  String Function(Map) getName = (aluno) => aluno.keys.first;
  var name = alunos.map(getName);
  print(name);

  int cont = 0;

  for (var nota in finais) {
    if (nota > media) {
      print(alunos[cont]);
    }

    cont++;
  }
}
