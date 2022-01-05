import 'dart:convert';

class Datamahasiswa {
  String nim;
  String nama;
  String alamat;
  String programstudi;
  String fakultas;

  Datamahasiswa.fromJson(Map<String, dynamic> json)
      : nim = json['nim'],
        nama = json['nama'],
        alamat = json['alamat'],
        programstudi = json['programstudi'],
        fakultas = json['fakultas'];

  Datamahasiswa(
      this.nim, this.nama, this.alamat, this.programstudi, this.fakultas);

  Map toJson() {
    return {
      'nim': nim,
      'nama': nama,
      'alamat': alamat,
      'programstudi': programstudi,
      'fakultas': fakultas
    };
  }
}

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
