// ignore_for_file: unused_import

import 'dart:convert';

class Datamahasiswa {
  String? nim;
  String? nama;
  String? alamat;
  String? programstudi;
  String? fakultas;

  factory Datamahasiswa.fromJson(Map<String, dynamic> json) => Datamahasiswa(
        nim: json["nim"],
        nama: json["nama"],
        alamat: json["alamat"],
        programstudi: json["programstudi"],
        fakultas: json["fakultas"],
      );

  Datamahasiswa(
      {this.nim, this.nama, this.alamat, this.programstudi, this.fakultas});

  // Map toJson() {
  //   return {
  //     'nim': nim,
  //     'nama': nama,
  //     'alamat': alamat,
  //     'programstudi': programstudi,
  //     'fakultas': fakultas
  //   };
  // }

  Map<String, dynamic> toJson() => {
        "nim": nim,
        "nama": nama,
        "alamat": alamat,
        "programstudi": programstudi,
        "fakultas": fakultas,
      };
}

List<Datamahasiswa> mahasiswaFromJson(String str) => List<Datamahasiswa>.from(
    json.decode(str).map((x) => Datamahasiswa.fromJson(x)));

String mahasiswaToJson(List<Datamahasiswa> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// mhsModel mhsModelJson(String str) => mhsModel.fromJson(json.decode(str));

// String mhsModelToJson(mhsModel data) => json.encode(data.toJson());

// class mhsModel {
//   String nim;
//   String nama;
//   // String alamat;
//   // String programstudi;
//   // String fakultas;

//   mhsModel({required this.nim, required this.nama,});
//   // this.alamat, this.programstudi, this.fakultas);

//   factory mhsModel.fromJson(Map<String, dynamic> json) =>
//       mhsModel(nim: json["nim"], nama: json["nama"]);

//   Map<String, dynamic> toJson() => {
//         "nim": nim,
//         "nama": nama,
//       };

//   // String get nim => nim;

//   // String get nama => nama;
// }
