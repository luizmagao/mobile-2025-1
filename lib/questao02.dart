import 'dart:io';

void init() {
  print('Digita a idade da primeira pessoa:');
  var pessoa1 = int.parse(stdin.readLineSync()!);
  print('Digita a idade da segunda pessoa:');
  var pessoa2 = int.parse(stdin.readLineSync()!);
  print('Digita a idade da terceira pessoa:');
  var pessoa3 = int.parse(stdin.readLineSync()!);

  var media = (pessoa1 + pessoa2 + pessoa3) / 3;

  print('É média das idades é $media.');
}
