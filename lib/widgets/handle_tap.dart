import 'package:flutter/material.dart';

class HandleTap extends StatelessWidget {
  const HandleTap({super.key});

  @override
  Widget build(BuildContext context) {
    return (GestureDetector(
      onTap: () {
        const snackBar = SnackBar(content: Text("Tap"));

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text("My Button")),
    ));
  }
}
