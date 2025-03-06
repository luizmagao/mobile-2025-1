import 'dart:io';

void main() {

  int diasDeColheita = 25;
  String fruta = "laranja";

  mostrarMadura(fruta, diasDeColheita);
}

mostrarMadura(String fruta, int dias) {
  if(dias >= 30) {
    print("A $fruta está madura.");
  } else {
    print("A $fruta não está madura.");
  }
}
