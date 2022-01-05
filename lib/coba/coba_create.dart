// import 'package:flutter/material.dart';

// import 'datamahasiswa.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class cobaCreate extends StatefulWidget {
//   @override
//   _cobaCreateState createState() => _cobaCreateState();
// }

// mhsModel dt;
// Future addMahasiswa() async {
//   try {
//     var Url = "http://localhost:8080/cre";
//     var response = await http.post(
//       Uri.parse(Url),
//       headers: <String, String>{"Content-Type": "application/json"},
//       body: jsonEncode(
//         <String, String>{
//           "nim": mhsModel.fromJson(nim),
//           "nama": nama,
//         },
//       ),
//     );
//   } catch (exc) {
//     print(exc);
//     rethrow;
//   }
// }

// class _cobaCreateState extends State<cobaCreate> {
//   TextEditingController nimCtr = TextEditingController();
//   TextEditingController nmCtr = TextEditingController();
//   TextEditingController adrCtr = TextEditingController();
//   TextEditingController prodCtr = TextEditingController();
//   TextEditingController facuCtr = TextEditingController();

//   late mhsModel dataa;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(13.0),
//               child: TextFormField(
//                 controller: nimCtr,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'kosong';
//                   }
//                 },
//                 decoration: InputDecoration(
//                     labelText: "nim",
//                     errorStyle:
//                         const TextStyle(fontSize: 20, color: Colors.black),
//                     border: const OutlineInputBorder()),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(13.0),
//               child: TextFormField(
//                 controller: nmCtr,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'kosong';
//                   }
//                 },
//                 decoration: InputDecoration(
//                     labelText: "nama",
//                     errorStyle:
//                         const TextStyle(fontSize: 20, color: Colors.black),
//                     border: const OutlineInputBorder()),
//               ),
//             ),
//             ElevatedButton(
//               child: Text("add"),
//               onPressed: () async {
//                 String nim = nimCtr.text;
//                 String nama = nmCtr.text;
//                 mhsModel datanya = await addMahasiswa(nim, nama, context);
//                 nimCtr.text = '';
//                 nmCtr.text = '';
//                 setState(() {
//                   dataa = datanya;
//                 });
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
