import 'package:flutter/material.dart';

class HelloWelcomeWidget extends StatelessWidget {
  const HelloWelcomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( //hello welkam
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
    );
  }
}
