import 'package:flutter/material.dart';
import 'package:widgets/widgets/reorderable_listview.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Reorder List"),
        centerTitle: true,
      ),
      body: ReorderListWidget(),
    );
  }
}
