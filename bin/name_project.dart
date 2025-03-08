import 'package:http/http.dart';
import 'dart:convert';

void main() {
  print("Iniciando o http");
  requestDataSync();
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

requestDataSync() async {
  String url =
      "https://gist.githubusercontent.com/luizmagao/161bd7cb770eb19256b8dc6055d53503/raw/cc10876ffca3ef619bda687dbba60054f7dc0961/accounts.json";
  Response request = await get(Uri.parse(url));
  print(json.decode(request.body)[0]);
  print("De fato, o final da função.");
}
