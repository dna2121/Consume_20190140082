import 'package:consume20190140082/models/datamahasiswa.dart';
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

  String? nim;
  String? nama;
  String? alamat;
  String? programstudi;
  String? fakultas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("add or update data mahasiswa"),
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
          String res = await HttpServiceRequest.putMethod(data);

          Navigator.of(context).pop();
        },
      ),
    );
  }
}
