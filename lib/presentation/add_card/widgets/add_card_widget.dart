import 'package:flutter/material.dart';

class AddCardWidget extends StatelessWidget {
  const AddCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.yellow,
      child: Center(
        child: Text('AddCard Widget'),
      ),
    );
  }
}
