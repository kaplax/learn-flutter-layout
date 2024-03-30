import 'package:flutter/material.dart';

class LongList extends StatelessWidget {
  const LongList({super.key, required this.items});
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        prototypeItem: ListTile(title: Text(items.first)),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        });
  }
}
