import 'package:consume20190140082/api/google_singin_api.dart';
import 'package:consume20190140082/pages/delete_page.dart';
import 'package:consume20190140082/pages/list_data_mahasiswa_page.dart';
import 'package:consume20190140082/pages/login_page.dart';
import 'package:consume20190140082/widgets/home/float_addbutton_widget.dart';
import 'package:flutter/material.dart';

class CrudPage extends StatelessWidget {
  const CrudPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("List of Data")),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DeletePage()),
              );
            },
            icon: const Icon(Icons.delete)),
        actions: [
          TextButton(
              onPressed: () async {
                await GoogleSignInApi.logout();

                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: const ListDataMahasiswaPage(),
      floatingActionButton: const FloatAddButtonWidget(),
    );
  }
}
