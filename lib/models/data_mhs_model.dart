// import 'dart:convert';

// MahasiswaModel MahasiswaModelJson(String str) =>
//     MahasiswaModel.fromJson(json.decode(str));

// String MahasiswaModelToJson(MahasiswaModel data) => json.encode(data.toJson());

// class MahasiswaModel {
//   int nim;
//   String nama;
//   String alamat;
//   String programstudi;
//   String fakultas;

//   MahasiswaModel(
//       {required this.nim,
//       required this.nama,
//       required this.alamat,
//       required this.programstudi,
//       required this.fakultas});

//   factory MahasiswaModel.fromJson(Map<String, dynamic> json) => MahasiswaModel(
//         nama: json["nama"],
//         alamat: json["alamat"],
//         programstudi: json["programstudi"],
//         fakultas: json["fakultas"],
//         nim: json["nim"],
//       );

//   Map<String, dynamic> toJson() => {
//         "nama": nama,
//         "alamat": alamat,
//         "programstudi": programstudi,
//         "fakultas": fakultas,
//         'nim': nim,
//       };

//   String get getNama => nama;
//   String get getAlamat => alamat;
// }
