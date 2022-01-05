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
        future: _fetchMahasiswa(),
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

  Future<List<Datamahasiswa>> _fetchMahasiswa() async {
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
        return _tile(
            data[index].nim, data[index].nama, Icons.face_unlock_rounded);
      },
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            //fontSize: 20,
          ),
        ),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );
}






// class RetrieveData extends StatefulWidget {
//   const RetrieveData({Key? key}) : super(key: key);

//   @override
//   _RetrieveDataState createState() => _RetrieveDataState();
// }

// class _RetrieveDataState extends State<RetrieveData> {
//   List<Datamahasiswa> mhsList = [];

//   void getCharactersfromApi() async {
//     gettDataApi.readData().then((response) {
//       setState(() {
//         Iterable list = json.decode(response.body);
//         mhsList = list.map((model) => Datamahasiswa.fromJson(model)).toList();
//       });
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     getCharactersfromApi();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Data Cards"),
//       ),
//       body: Container(
//         child: ListView.builder(
//             itemCount: mhsList.length,
//             itemBuilder: (context, index, AsyncSnapshot snap) {
//               return ListTile(
//                 title: Text('nim'+''+'nama'+''+'prodi'),
//                 subtitle: Text('${AsyncSnapshot.}'),
//               );
//             }),
//       ),
//     );
//   }
// }
