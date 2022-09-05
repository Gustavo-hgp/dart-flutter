import 'dart:math';

main() {
  final Map<String, String> mapNomes = {};
  final Map<String, int> mapNotas = {};

  List<int> listNotas = [];
  List<String> listNomes = [
    'Alfredo',
    'Wilson',
    'Mariana',
    'Guilherme',
    'Ana',
    'Ricardo'
  ];
  var listFinal = [];

  var rng = new Random();
  for (var i = 0; i < 6; i++) {
/*     listFinal.update(
        listNomes[cont], (value) => listNomes[cont] + '@gmail.com');
    listFinal.update('nota:', (value) => rng.nextInt(10)); */
    Map<String, Object> aluno = {
      'Nome': listNomes[i],
      'Email': listNomes[i] + '@gmail.com',
      'Nota': rng.nextInt(3) + 7
    };
    listFinal.add(aluno);
  }

  var notasFinais = listFinal
      .map((aluno) => aluno['Nota'])
      .map((nota) => (nota as int).roundToDouble());

  var total = notasFinais.reduce((t, a) => t + a);

  var media = total / notasFinais.length;

  int Function(Map) pegarApenasANota = (aluno) => aluno['Nota'];

  var notas = listFinal
      .map((aluno) => aluno['Nota'])
      .map((nota) => (nota as int).roundToDouble())
      .where((nota) => nota >= media);

  int cont = 0;
  print("Media: " + media.toString());
  print("=============================");
  print("Alunos acima da media: ");

  for (var nota in notasFinais) {
    if (nota > media) {
      print(listFinal[cont]);
    }

    cont++;
  }

  print("=============================");

  print(listFinal);
}
