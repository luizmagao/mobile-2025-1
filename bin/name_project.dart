import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String entrada = "";
  List<String> operacoes = <String>["+", "-", "/", "*"];

  print('Informe um número: ');
  numeroUm = double.parse(stdin.readLineSync()!);
  print('Informe sua operação ${operacoes.toString()}: ');
  entrada = stdin.readLineSync()!;

  if (!operacoes.contains(entrada)) {
    print('Operação não existe');
  }

  print('Informe outro número: ');
  numeroDois = double.parse(stdin.readLineSync()!);

  print('Resultado: ');
  void somar() {
    print(numeroUm + numeroDois);
  }

  void subtrair() {
    print(numeroUm - numeroDois);
  }

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

  switch (entrada) {
    case '+':
      somar();
      break;
    case '-':
      subtrair();
      break;
    case '/':
      divisao();
      break;
    case '*':
      multiplicacao();
      break;
  }
}
