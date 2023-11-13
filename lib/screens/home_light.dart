import 'package:flutter/material.dart';

class HomeLight extends StatelessWidget {
  const HomeLight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Create a list of items
    final List<String> entries = <String>['A', 'B', 'C'];
    // Create a list of colors
    // final List<int> colorCodes = <int>[600, 500, 100];

    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 500,
            color: Colors.grey,
            child: Center(child: Text('Entry ${entries[index]}')),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}