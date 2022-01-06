import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpServiceRequest {
  final baseUrl = "http://10.0.2.2:8080";

  //post method
  static Future<String> postMethod(Map<String, dynamic> data) async {
    var response = await http.post(
      Uri.parse("http://10.0.2.2:8080/cre"),
      body: jsonEncode(data),
      headers: {
        "Content-Type": "application/json; charset=UTF-8",
      },
    );
    if (response.statusCode == 200) {
      return "success";
    } else {
      print(response.body);

      return "";
    }
  }

  //put method
  static Future<String> putMethod(Map<String, dynamic> data) async {
    var response = await http.put(
      Uri.parse("http://10.0.2.2:8080/upd/{nim}"),
      body: jsonEncode(data),
      headers: {
        "Content-Type": "application/json; charset=UTF-8",
      },
    );
    if (response.statusCode == 200) {
      return "success";
    } else {
      print(response.body);
      return "";
    }
  }
}
