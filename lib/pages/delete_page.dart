import 'package:consume20190140082/service/http_service_request.dart';
import 'package:flutter/material.dart';

class DeletePage extends StatefulWidget {
  const DeletePage({Key? key}) : super(key: key);

  @override
  _DeletePageState createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  HttpServiceRequest httprequest = HttpServiceRequest();
  String? nim;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("delete"),
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
                  labelText: "nim",
                  border: OutlineInputBorder(),
                  filled: true,
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
          };
          String res = await HttpServiceRequest.delMethod(data);

          Navigator.of(context).pop();
          initState();
        },
      ),
    );
  }
}
