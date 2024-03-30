import 'package:flutter/material.dart';

class RetrieveValueOfText extends StatefulWidget {
  const RetrieveValueOfText({super.key});

  @override
  State<RetrieveValueOfText> createState() => _RetrieveValueOfTextState();
}

class _RetrieveValueOfTextState extends State<RetrieveValueOfText> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            controller: myController,
          ),
        ),
        GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(content: Text(myController.text));
                });
          },
          child: Text("click"),
        )
      ],
    );
  }
}
