void main() {
  double media = 0, total = 0, cont = 0;
  var notas = {7.9, 6.3, 5.7, 8.1, 7.6, 6.8};

  for (var nota in notas) {
    media += nota;
  }

  total = media / notas.length;

  for (var nota in notas) {
    if (nota > total) {
      cont++;
    }
  }

  print("A media da turma foi: " +
      total.toStringAsFixed(2) +
      "\nE o total de alunos com a nota maior que a media foi de: " +
      cont.toString());
}
