import 'package:flutter/material.dart';

import '../widgets/home/hellowelcome_widget.dart';
import '../widgets/home/login_form_widget.dart';
import '../widgets/home/login_w_google_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            //color: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      HelloWelcomeWidget(),
                      LoginFormWidget(),
                    ],
                  ),
                  const LoginWithGoogleWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
