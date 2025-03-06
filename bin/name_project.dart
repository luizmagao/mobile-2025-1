import 'dart:io';

void main() {

  String fruta = "laranja";
  String cor = "Verde e amarla";
  String sabor = "Doce e cítrica";
  double peso = 100.2;
  int diasDeColheita = 30;
  bool isModura = false;

  Fruta fruta1 = Fruta(fruta, cor, sabor, peso, diasDeColheita);
  Fruta fruta2 = Fruta("Uva", "roxa", "Doce", 20.9, 29);

  print(fruta1.fruta);
  print(fruta1);

}

class Fruta {
  String fruta;
  String cor;
  String sabor;
  double peso;
  int diasDeColheita;
  bool isModura;

  Fruta(this.fruta, this.cor, this.sabor, this.peso, this.diasDeColheita, {this.isModura= false});
}
