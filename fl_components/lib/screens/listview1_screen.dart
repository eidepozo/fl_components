import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
        ),
        body: ListView(
          children: [
            ...options
                .map((e) => ListTile(
                      title: Text(e),
                      trailing: const Icon(Icons.arrow_right_outlined),
                    ))
                .toList()
          ],
        ));
  }
}
