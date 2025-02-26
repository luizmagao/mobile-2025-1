import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String entrada = "";
  List<String> operacoes = <String>["+", "-", "/", "*"];

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

  void getOperacao() {
    print('Informe sua operação ${operacoes.toString()}: ');
    entrada = stdin.readLineSync()!;
    if (!operacoes.contains(entrada)) {
      getOperacao();
    }
  }

  print('Informe um número: ');
  numeroUm = double.parse(stdin.readLineSync()!);
  getOperacao();
  print('Informe outro número: ');
  numeroDois = double.parse(stdin.readLineSync()!);

  print('Resultado: ');
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
