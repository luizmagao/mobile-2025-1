import 'dart:io';

void main() {

  int diasDeColheita = 30;
  String fruta = "laranja";

  mostrarMadura(fruta: fruta, dias: diasDeColheita);
}

mostrarMadura({String? fruta, int dias = 0}) {
  if(dias >= 30) {
    print("A $fruta está madura.");
  } else {
    print("A $fruta não está madura.");
  }
}
