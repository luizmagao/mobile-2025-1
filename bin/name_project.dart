import 'dart:async';

import 'package:http/http.dart';
import 'dart:convert';

import 'package:name_project/api_key.dart';

StreamController<String> streamController = StreamController<String>();

void main() {
  StreamSubscription streamSubscription = streamController.stream.listen((
    String info,
  ) {
    print(info);
  });

  print("Iniciando o http");
  requestDataSync();
  requestData();
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
  futureResponse.then((Response response) {
    streamController.add(
      "${DateTime.now()} | Requisição de leitura (usando then).",
    );
  });
}

Future<List<dynamic>> requestDataSync() async {
  String url =
      "https://gist.githubusercontent.com/luizmagao/161bd7cb770eb19256b8dc6055d53503/raw/cc10876ffca3ef619bda687dbba60054f7dc0961/accounts.json";
  Response request = await get(Uri.parse(url));
  streamController.add("${DateTime.now()} | Requisição de leitura.");
  return json.decode(request.body);
}

void sendDataAsync(Map<String, dynamic> mapAccount) async {
  List<dynamic> listAccounts = await requestDataSync();
  listAccounts.add(mapAccount);
  String content = json.encode(listAccounts);

  String url = "https://api.github.com/gists/161bd7cb770eb19256b8dc6055d53503";
  Response response = await post(
    Uri.parse(url),
    headers: {"Authorization": "Bearer $githubApiKey"},
    body: json.encode({
      "description": "accounts.json",
      "public": true,
      "files": {
        "accounts.json": {"content": content},
      },
    }),
  );

  if (response.statusCode == 200) {
    streamController.add(
      "${DateTime.now()} | Requisição adição bem sucedida (${mapAccount['name']}).",
    );
  } else {
    streamController.add("${DateTime.now()} | Requisição falhou.");
  }
}
