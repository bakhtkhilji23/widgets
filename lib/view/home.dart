import 'package:flutter/material.dart';
import 'package:widgets/widgets/reorderable_listview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReorderListWidget(),
    );
  }
}
