import 'dart:math';

main() {
  final Map<String, String> mapNomes = {};
  final Map<String, int> mapNotas = {};

  List<int> listNotas = [];
  List<String> listNames = [
    'Camila',
    'Gustavo',
    'Bruna',
    'Fagner',
    'Marcos',
    'Breno'
  ];

  var listFinal = [];

  var numeroAleatorio = new Random();

  for (var i = 0; i < 6; i++) {
    Map<String, Object> aluno = {
      'Nome': listNames[i],
      'Email': listNames[i] + '@gmail.com',
      'Nota': numeroAleatorio.nextInt(10)
    };
    listFinal.add(aluno);
  }
  var finais = listFinal
      .map((aluno) => aluno['nota'])
      .map((nota) => (nota as double).roundToDouble());

  var total = finais.reduce((t, a) => t + a);

  var media = total / finais.length;

  int Function(Map) getNota = (aluno) => aluno['Nota'];

  var notas = listFinal
      .map((aluno) => aluno['Nota'])
      .map((nota) => (nota as int).roundToDouble())
      .where((nota) => nota >= media);

  int cont = 0;
  print("Media: " + media.toString());

  for (var nota in notas) {
    if (nota > media) {
      print(listFinal[cont]);
    }

    cont++;
  }

  print("=============================");

  print(listFinal);
}
