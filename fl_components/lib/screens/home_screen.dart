import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home Screen'), elevation: 0),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                title: const Text('Ruta'),
                leading: const Icon(Icons.arrow_forward_ios),
                onTap: (() {
                  //final route = MaterialPageRoute(
                  //    builder: (context) => const Listview1Screen());
                  //Navigator.push(context, route);
                  Navigator.pushNamed(context, 'listview1');
                })), //const Text('Hola mundo'),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
