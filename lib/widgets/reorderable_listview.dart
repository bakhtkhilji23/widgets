import 'package:flutter/material.dart';

class ReorderListWidget extends StatefulWidget {
  const ReorderListWidget({super.key});

  @override
  State<ReorderListWidget> createState() => _ReorderListWidgetState();
}

class _ReorderListWidgetState extends State<ReorderListWidget> {
  List<String> fruitList = [
    "Apple",
    "Mango",
    "Orange",
    "Banana",
    "Graps",
    "Cherry"
  ];
  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
        itemBuilder: (context, index) {
          String fruit = fruitList[index];
          return Card(
            key: ValueKey(fruit),
            child: ListTile(
              key: ValueKey(fruit),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/fruits/$fruit.png"),
              ),
              title: Text(fruit),
              trailing: IconButton(
                  onPressed: () => setState(() {
                        fruitList.removeAt(index);
                      }),
                  icon: Icon(Icons.delete)),
            ),
          );
        },
        itemCount: fruitList.length,
        onReorder: ((oldIndex, newIndex) => setState(() {
              final index = newIndex > oldIndex ? newIndex - 1 : newIndex;
              final fruit = fruitList.removeAt(oldIndex);
              fruitList.insert(index, fruit);
            })));
  }
}
