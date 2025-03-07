import 'package:http/http.dart';

void main() {
  print("Iniciando o http");
}

void requestData() {
  String url = "https://gist.githubusercontent.com/luizmagao/161bd7cb770eb19256b8dc6055d53503/raw/cc10876ffca3ef619bda687dbba60054f7dc0961/accounts.json";
  print(get(Uri.parse(url)));
}