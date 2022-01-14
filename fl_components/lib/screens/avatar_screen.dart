import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elliot Ide Pozo'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: const Text('EP'),
              backgroundColor: Colors.green.shade300,
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
            maxRadius: 150,
            backgroundImage: NetworkImage(
                'https://www.eltucumano.com/fotos/cache/notas/2021/09/11/818x460_210911094034_72635.jpg')),
      ),
    );
  }
}
