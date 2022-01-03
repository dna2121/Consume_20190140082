import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hello,",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "Welcome",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  Column(
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
                      Container(
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
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.deepPurple),
                          ),
                          child: const Text(
                            "Sign In",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
