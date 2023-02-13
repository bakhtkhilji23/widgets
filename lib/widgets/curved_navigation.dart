import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:widgets/utils/colors.dart';
import 'package:widgets/view/home.dart';
import 'package:widgets/widgets/reorderable_listview.dart';
import 'package:widgets/widgets/spinkit_splash.dart';

class CurveNavigationWidget extends StatefulWidget {
  const CurveNavigationWidget({super.key});

  @override
  State<CurveNavigationWidget> createState() => _CurveNavigationWidgetState();
}

class _CurveNavigationWidgetState extends State<CurveNavigationWidget> {
  int index = 0;
  final _bottomNavigationKey = GlobalKey<CurvedNavigationBarState>();

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = const [
      MyHomePage(),
      SpinkitSplashWidget(),
      Center(
        child: Text("Setting"),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Cureved Navigation"),
        centerTitle: true,
      ),
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        color: pinkColor,
        backgroundColor: Colors.white,
        height: 70,
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
