import 'package:flutter/material.dart';

class UserListItem {
  IconData icon;
  String title;

  UserListItem({required this.icon, required this.title});
}

class UserList extends StatelessWidget {
  const UserList({super.key, required this.list});

  final List<UserListItem> list;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: list.map((item) {
        return ListTile(leading: Icon(item.icon), title: Text(item.title));
      }).toList(),
    );
  }
}
