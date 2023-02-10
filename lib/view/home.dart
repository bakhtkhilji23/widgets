import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets/reorderable_listview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  final _bottomNavigationKey = GlobalKey<CurvedNavigationBarState>();
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = const [
      ReorderListWidget(),
      Center(
        child: Text("Favourite"),
      ),
      Center(
        child: Text("Setting"),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cureved Navigation"),
        centerTitle: true,
      ),
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.red,
        backgroundColor: Colors.white,
        height: 60,
        index: index,
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            size: 30,
            color: Colors.white,
          )
        ],
        key: _bottomNavigationKey,
        onTap: (index) => setState(() {
          this.index = index;
        }),
      ),
    );
  }
}
