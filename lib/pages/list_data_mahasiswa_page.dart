import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:consume20190140082/models/datamahasiswa.dart';
import 'package:flutter/material.dart';

class ListDataMahasiswaPage extends StatelessWidget {
  const ListDataMahasiswaPage({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Datamahasiswa>>(
        future: fetchMahasiswa(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Datamahasiswa>? data = snapshot.data;
            return _mhsListView(data);
          } else if (snapshot.hasError) {
            return Text("$snapshot.error");
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }

  //GET method
  Future<List<Datamahasiswa>> fetchMahasiswa() async {
    const mhsListAPIUrl = 'http://10.0.2.2:8080';
    final response = await http.get(Uri.parse(mhsListAPIUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse
          .map((datamhss) => Datamahasiswa.fromJson(datamhss))
          .toList();
    } else {
      throw Exception('Failed to load Datamahasiswa from API');
    }
  }

  ListView _mhsListView(data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Card(
            color: Colors.grey[100],
            elevation: 3,
            child: tile(data[index].nim, data[index].nama, context),
          ),
        );
      },
    );
  }

  ListTile tile(String title, String subtitle, BuildContext context) =>
      ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(subtitle),
      );
}


// class DetailPage extends StatelessWidget {
//   //const DetailPage({Key? key}) : super(key: key);
//   Datamahasiswa model;

//   DetailPage(this.model);

//   Future deleteData(Datamahasiswa model) async {
//     const deleteUrl = 'http://10.0.2.2:8080/del/{nim}';
//     final req = http.Request("Delete", Uri.parse(deleteUrl));

//     req.headers.addAll(<String, String>{"Content-type": "application/json"});
//     req.body = jsonEncode(Datamahasiswa);
//     final response = await req.send();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//           //child: Text('nim' + ' ' + model.nim),
//           ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           deleteData(model);
//         },
//         child: Icon(Icons.delete),
//       ),
//     );
//   }
// }
