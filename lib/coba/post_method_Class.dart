// ignore_for_file: file_names, must_be_immutable

import 'package:consume20190140082/models/datamahasiswa.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class PostMethod extends StatefulWidget {
  const PostMethod({Key? key}) : super(key: key);

  @override
  _PostMethodState createState() => _PostMethodState();
}

class _PostMethodState extends State<PostMethod> {
  // List<Datamahasiswa> datamhs = [];
  // late Datamahasiswa data;

  // final String url = "http://10.0.2.2:8080";

  // void _fetchData() async {
  //   final Dio dio = new Dio();

  //   try {
  //     var response = await dio.get("$url");
  //     print(response.statusCode);
  //     print(response.data);
  //     var responseData = response.data as List;

  //     setState(() {
  //       datamhs = responseData.map((e) => Datamahasiswa.fromJson(e)).toList();
  //     });
  //   } on DioError catch (e) {
  //     print(e);
  //   }
  // }

  final _formKey = GlobalKey<FormState>();
  Datamahasiswa data = Datamahasiswa("", "", "", "", "");
  String url = 'http://10.0.2.2:8080/cre';

  Future save() async {
    var res = await http.post(Uri.parse(url),
        body: json.encode(
          <String, dynamic>{
            'nim': data.nim,
            'nama': data.nama,
            'alamat': data.alamat,
            'programstudi': data.programstudi,
            'fakultas': data.fakultas
          },
        ),
        headers: {
          "Accept": "application/json",
          "content-type": "application/json"
        });

    // headers: {
    //   'Content-Type': 'application/json',
    //   "Access-Control-Allow-Origin": "*"
    // },
    // body: json.encode(<String, String>{
    //   'nim': data.nim,
    //   'nama': data.nama,
    //   'alamat': data.alamat,
    //   'programstudi': data.programstudi,
    //   'fakultas': data.fakultas
    // }));

    print('Response status: ${res.statusCode}');
    print('Response body: ${res.body}');
   
  }

  Future readData() async {
    var res = await http.read(Uri.parse('http://10.0.2.2:8080'));
    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: InputData(
                data: data,
                label: "nim",
                textController: data.nim,
                textValue: data.nim,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: InputData(
                data: data,
                label: "nama",
                textController: data.nama,
                textValue: data.nama,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: InputData(
                data: data,
                label: "alamat",
                textController: data.alamat,
                textValue: data.alamat,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: InputData(
                data: data,
                label: "programstudi",
                textController: data.programstudi,
                textValue: data.programstudi,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: InputData(
                data: data,
                label: "fakultas",
                textController: data.fakultas,
                textValue: data.fakultas,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                save();
                //_fetchData();
              },
              child: const Text("add data"),
            ),
            ElevatedButton(
                onPressed: () {
                  readData();
                },
                child: const Text("read data"))
          ],
        ),
      ),
    );
  }
}

class InputData extends StatelessWidget {
  InputData(
      {Key? key,
      required this.data,
      required this.label,
      required this.textController,
      required this.textValue})
      : super(key: key);

  final Datamahasiswa data;
  final String label;
  final String textController;
  String textValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: TextEditingController(text: textController),
      onChanged: (val) {
        textValue = val;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return 'Empty';
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: label,
          errorStyle: const TextStyle(fontSize: 20, color: Colors.black),
          border: const OutlineInputBorder()),
    );
  }
}
