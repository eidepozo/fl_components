import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_themes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(title: const Text('Home Screen')),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                title: Text(menuOptions[index].name),
                leading:
                    Icon(menuOptions[index].icon, color: AppThemes.primary),
                onTap: (() {
                  //final route = MaterialPageRoute(
                  //    builder: (context) => const Listview1Screen());
                  //Navigator.push(context, route);
                  Navigator.pushNamed(context, menuOptions[index].route);
                })), //const Text('Hola mundo'),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
