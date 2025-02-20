import 'dart:io';

void main() {
  print('Informe um número: ');
  var numeroUm = double.parse(stdin.readLineSync()!);
  print('Informe outro número: ');
  var numeroDois = double.parse(stdin.readLineSync()!);
  print('Informe sua operação (+, -, /, *): ');
  var operacao = stdin.readLineSync();

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

  if (operacao == '+') {
    somar();
  }

  if (operacao == '-') {
    subtrair();
  }

  if (operacao == '/') {
    divisao();
  }

  if (operacao == '*') {
    multiplicacao();
  }
}
