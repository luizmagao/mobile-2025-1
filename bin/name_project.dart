import 'package:http/http.dart';
import 'dart:convert';

void main() {
  print("Iniciando o http");
  // requestDataSync();
  sendDataAsync({
    "id": "NEW001",
    "name": "Flutter",
    "lastName": "Dart",
    "balance": 5000,
  });
}

void requestData() {
  String url =
      "https://gist.githubusercontent.com/luizmagao/161bd7cb770eb19256b8dc6055d53503/raw/cc10876ffca3ef619bda687dbba60054f7dc0961/accounts.json";
  Future<Response> futureResponse = get(Uri.parse(url));
  print(futureResponse);
  futureResponse.then((Response response) {
    print(response);
    print(response.body);
    List<dynamic> listAccounts = json.decode(response.body);

    Map<String, dynamic> mapCarla = listAccounts.firstWhere(
      (element) => element["name"] == 'Carla',
    );

    print(mapCarla);
  });
  print("Última coisa a acontecer na função");
}

Future<List<dynamic>> requestDataSync() async {
  String url =
      "https://gist.githubusercontent.com/luizmagao/161bd7cb770eb19256b8dc6055d53503/raw/cc10876ffca3ef619bda687dbba60054f7dc0961/accounts.json";
  Response request = await get(Uri.parse(url));
  return json.decode(request.body);
}

void sendDataAsync(Map<String, dynamic> mapAccount) async {
  List<dynamic> listAccounts = await requestDataSync();
  listAccounts.add(mapAccount);
  String content = json.encode(listAccounts);
  print(content);
}
