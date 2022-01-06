import 'package:consume20190140082/models/datamahasiswa.dart';
import 'package:consume20190140082/pages/list_data_mahasiswa_page.dart';
import 'package:consume20190140082/service/http_service_request.dart';
import 'package:flutter/material.dart';

class AddDataPage extends StatefulWidget {
  const AddDataPage({Key? key}) : super(key: key);

  @override
  _AddDataPageState createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  HttpServiceRequest httprequest = HttpServiceRequest();
  late Future<List<Datamahasiswa>> futurePost;

  @override
  void initState() {
    futurePost = const ListDataMahasiswaPage().fetchMahasiswa();
    super.initState();
  }

  String? nim;
  String? nama;
  String? alamat;
  String? programstudi;
  String? fakultas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("add data mahasiswa"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (_value) {
                  nim = _value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  labelText: "nim",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (_value) {
                  nama = _value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  labelText: "nama",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (_value) {
                  alamat = _value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  labelText: "alamat",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (_value) {
                  programstudi = _value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  labelText: "program studi",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (_value) {
                  fakultas = _value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  labelText: "fakultas",
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () async {
          Map<String, dynamic> data = {
            "nim": nim,
            "nama": nama,
            "alamat": alamat,
            "programstudi": programstudi,
            "fakultas": fakultas,
          };
          String res = await HttpServiceRequest.postMethod(data);

          Navigator.of(context).pop();
          initState();
        },
      ),
    );
  }
}

// class AddDataPage extends StatefulWidget {
//   const AddDataPage({Key? key}) : super(key: key);

//   @override
//   _AddDataPageState createState() => _AddDataPageState();
// }

// class _AddDataPageState extends State<AddDataPage> {
//   HttpServiceRequest httpServiceReq = HttpServiceRequest();
//   late Future<List<Datamahasiswa>> futurePost;

//   @override
//   void initState() {
//     futurePost = const ListDataMahasiswaPage().fetchMahasiswa();
//     super.initState();
//   }

//   String? nim;
//   String? nama;
//   String? alamat;
//   String? programstudi;
//   String? fakultas;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("add data mahasiswa"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   filled: true,
//                   labelText: "nim",
//                 ),
//                 onChanged: (_val) {
//                   nim = _val;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   filled: true,
//                   labelText: "nama",
//                 ),
//                 onChanged: (_val) {
//                   nama = _val;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   filled: true,
//                   labelText: "alamat",
//                 ),
//                 onChanged: (_val) {
//                   alamat = _val;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   filled: true,
//                   labelText: "program studi",
//                 ),
//                 onChanged: (_val) {
//                   programstudi = _val;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   filled: true,
//                   labelText: "fakultas",
//                 ),
//                 onChanged: (_val) {
//                   fakultas = _val;
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 Map<String, dynamic> data = {
//                   "nim": nim,
//                   "nama": nama,
//                   "alamat": alamat,
//                   "programstudi": programstudi,
//                   "fakultas": fakultas,
//                 };
//                 String res = await HttpServiceRequest.addDataMhs(data);
//                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                   content: Text("Data added."),
//                 ));
//                 Navigator.of(context).pop();
//                 initState() {}
//                 ;
//               },
//               child: const Text(
//                 "Add",
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
