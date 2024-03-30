import 'package:flutter/material.dart';
import 'package:layout/widgets/different_type_list.dart';
import 'package:layout/widgets/drag_widget.dart';
import 'package:layout/widgets/favorite.dart';
import 'package:layout/widgets/handle_tap.dart';
import 'package:layout/widgets/horizontal_list.dart';
import 'package:layout/widgets/layout/demo1.dart';
import 'package:layout/widgets/long_list.dart';
import 'package:layout/widgets/retrieve_value_of_text.dart';
import 'package:layout/widgets/spaced_list.dart';
import 'package:layout/widgets/tapbox.dart';
import 'package:layout/widgets/user_list.dart';

void main() {
  runApp(Demo1());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String appTitle = "Flutter layout demo";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const RetrieveValueOfText(),
        // const DragWidget(),
        // const HandleTap(),
        // const TapBoxA(),
        // const BodySection(),
        // LongList(items: List.generate(10000, (index) => "Item $index"),)
        // const SpacedList(),
        // const DifferentTypeList(),
        // const HorizontalList(),
        // UserList(list: [
        //   UserListItem(icon: Icons.map, title: "Map"),
        //   UserListItem(icon: Icons.photo_album, title: "Album"),
        //   UserListItem(icon: Icons.phone, title: "Phone"),
        // ]),
        // const BodySection(),
      ),
    );
  }
}

class BodySection extends StatelessWidget {
  const BodySection({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(
      children: [
        ImageSection(image: 'assets/imgs/lake.jpg'),
        TitleSection(
            name: 'Oeschinen Lake Compground',
            location: "Kandersteg, Switzerland"),
        ButtonSection(),
        TextSection(
          description:
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
              'Bernese Alps. Situated 1,578 meters above sea level, it '
              'is one of the larger Alpine Lakes. A gondola ride from '
              'Kandersteg, followed by a half-hour walk through pastures '
              'and pine forest, leads you to the lake, which warms to 20 '
              'degrees Celsius in the summer. Activities enjoyed here '
              'include rowing, and riding the summer toboggan run.',
        )
      ],
    ));
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(location, style: TextStyle(color: Colors.grey[500]))
            ],
          ),
        ),
        FavoriteWidget(),
      ]),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonWithText(color: color, icon: Icons.call, label: "Call"),
        ButtonWithText(color: color, icon: Icons.near_me, label: "ROUTE"),
        ButtonWithText(color: color, icon: Icons.share, label: "SHARE"),
      ],
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(label,
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w400, color: color)),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(32),
        child: Text(
          description,
          softWrap: true,
        ));
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 240, fit: BoxFit.cover);
  }
}
