import 'package:flutter/material.dart';
import 'package:layout/widgets/layout/second_tab.dart';
import 'package:layout/widgets/layout/third_tab.dart';

class Demo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.yellow),
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: Colors.yellow,
            ),
        primarySwatch: Colors.yellow,
        primaryColor: Colors.yellow,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('HELLO'),
            // leading: IconButton(
            //     onPressed: () {
            //       debugPrint("Navigration Button pressed");
            //     },
            //     icon: const Icon(Icons.menu),
            //     tooltip: "Navigration"),
            actions: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  tooltip: "Search"),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
              unselectedLabelColor: Colors.black38,
              labelColor: Colors.black,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
            ),
          ),
          body: TabBarView(children: [
            Icon(Icons.local_florist, size: 128, color: Colors.black12),
            SecondTab(),
            ThirdTab(),
          ]),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    'kapla',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text('eumenides_x@icloud.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://i2.hdslb.com/bfs/face/c3ef04ba6c267c41067cd7708b7abd60c0c5c49f.jpg@120w_120h_1c.webp'),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.yellow[400],
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://i2.hdslb.com/bfs/manga-static/8ff30760d19eecb9e6c1f5e08638581b5478607c.png@672w_378h_1c'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(.6), BlendMode.hardLight),
                      )),
                ),
                ListTile(
                  title: Text('Messages', textAlign: TextAlign.right),
                  trailing:
                      Icon(Icons.message, color: Colors.black12, size: 22),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Favorite', textAlign: TextAlign.right),
                  trailing:
                      Icon(Icons.favorite, color: Colors.black12, size: 22),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Setting', textAlign: TextAlign.right),
                  trailing:
                      Icon(Icons.settings, color: Colors.black12, size: 22),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<BottomNavigationBarDemo> createState() =>
      _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My'),
      ],
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Center(
      child: Text('Hello', style: TextStyle(color: color)),
    );
  }
}
