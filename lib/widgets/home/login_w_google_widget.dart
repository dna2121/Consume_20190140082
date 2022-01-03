import 'package:consume20190140082/api/google_singin_api.dart';
import 'package:consume20190140082/widgets/pages/crud_page.dart';
import 'package:flutter/material.dart';

class LoginWithGoogleWidget extends StatelessWidget {
  const LoginWithGoogleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //api google
      margin: const EdgeInsets.only(top: 87),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "— Or —",
            style: TextStyle(color: Colors.black26, fontSize: 20),
          ),
          const SizedBox(height: 23),
          SizedBox(
            width: double.infinity,
            height: 55,
            child: TextButton(
              onPressed: () async {
                await GoogleSignInApi.login();

                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const CrudPage()));
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: const BorderSide(color: Colors.grey)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png',
                    height: 20,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Sign In with Google",
                    style: TextStyle(fontSize: 18, color: Colors.deepPurple),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
