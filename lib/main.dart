import 'package:consume20190140082/coba/post_method_Class.dart';
import 'package:consume20190140082/coba/coba_create.dart';
import 'package:consume20190140082/home.dart';
import 'package:consume20190140082/pages/crud_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Web Service',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: PostMethod());
  }
}
