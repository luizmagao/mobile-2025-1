import 'dart:io';

void main() {

  String fruta = "laranja";
  String cor = "Verde e amarla";
  String sabor = "Doce e cítrica";
  double peso = 100.2;
  int diasDeColheita = 45;
  bool isModura = false;

  Fruta fruta1 = Fruta(fruta, cor, sabor, peso, diasDeColheita);
  Fruta fruta2 = Fruta("Uva", "roxa", "Doce", 20.9, 29);

  print(fruta1.fruta);
  fruta1.estaMadura(40);

}

class Fruta {
  String fruta;
  String cor;
  String sabor;
  double peso;
  int diasDeColheita;
  bool isModura;

  Fruta(this.fruta, this.cor, this.sabor, this.peso, this.diasDeColheita, {this.isModura= false});

  void estaMadura(int diasParaMadura){
    this.isModura = this.diasDeColheita >= diasParaMadura;
    print("A sua ${this.fruta} foi colhida a ${this.diasDeColheita} dias, e precisa de ${diasParaMadura}. Ela está ${this.isModura}.");
  }
}
