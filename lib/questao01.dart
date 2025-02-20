import 'dart:io';

void init() {
  print('Digite um número: ');
  var entrada = int.parse(stdin.readLineSync()!);

  var dobro = entrada * 2;

  print('O dobro de $entrada é $dobro.');
}
