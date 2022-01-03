import 'package:flutter/material.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column( //form login
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Email",
            enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.deepPurple)),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: "Password",
            enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.deepPurple)),
          ),
        ),
        const SizedBox(
          height: 33,
        ),
        SizedBox(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all<
                  RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all<Color>(
                      Colors.deepPurple),
            ),
            child: const Text(
              "Sign In",
              style: TextStyle(
                  color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}

