import 'package:consume20190140082/pages/add_data.dart';
import 'package:flutter/material.dart';

class FloatAddButtonWidget extends StatelessWidget {
  const FloatAddButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: Colors.pink,
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const AddDataPage()),
        );
      },
      tooltip: "add",
      child: const Icon(Icons.edit),
    );
  }
}
