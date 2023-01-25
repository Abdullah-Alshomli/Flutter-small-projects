import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String? url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url!));

    print(response.body);
    if (response.statusCode == 200) {
      String data = response.body;

      var decodedJson = jsonDecode(data);
      return decodedJson;
    } else {
      print(response.statusCode);
    }
  }
}
