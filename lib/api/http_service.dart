// // import 'dart:io';

// // import 'package:http/http.dart' as http;
// // import 'dart:convert';

import 'package:dio/dio.dart';

// void getHttp() async {
//   try {
//     var response = await Dio().get('http://google.com');
//     print(response);
//   } catch (e) {
//     print(e);
//   }
// }

// class Datamhs {
//   Future<void> getData() async {
//     var dio = Dio();
//     final response = await dio.get('https://localhost:8080/get');
//     print(response.data);
//   }
// }

import 'dart:convert';
import 'dart:io';

class Datamhs {
  var client = HttpClient();

  Future<void> getData() async {
    try {
      HttpClientRequest request = await client.get('localhost', 5000, '/get');
      // Optionally set up headers...
      // Optionally write to the request object...
      HttpClientResponse response = await request.close();
      // Process the response
      final stringData = await response.transform(utf8.decoder).join();
      print(stringData);
    } finally {
      client.close();
    }
  }
}

// // class HttpService {
// //   final String dataMhsUrl = "http://localhost:8080/get";

// //   void main(List<String> args) async {
// //     var Url = Uri.http('localhost:8080', "/get");

// //     var response = await get(Uri.parse(dataMhsUrl));

// //     if (response.statusCode == 200) {
// //       var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
// //       var itemCount = jsonResponse['totalItems'];
// //       print('Number of books about http: $itemCount.');
// //     } else {
// //       print('Request failed with status: ${response.statusCode}.');
// //     }
// //   }
// }


