import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Sure ...',
    'Thanks for that',
    'That sounds interesting',
    'I wish I had your confidence'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('ListView2 Screen'),
            backgroundColor: Colors.indigo),
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
