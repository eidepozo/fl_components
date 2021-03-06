import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ListView2 Screen')),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                title: Text(options[index]),
                trailing: const Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.indigo),
                onTap: () {
                  final game = options[index];
                  print(game);
                }),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
