import 'package:consume20190140082/api/google_singin_api.dart';
import 'package:consume20190140082/home.dart';
import 'package:flutter/material.dart';

class CrudPage extends StatelessWidget {
  const CrudPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () async {
                await GoogleSignInApi.logout();

                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
