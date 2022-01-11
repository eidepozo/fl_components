import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'listview1': (BuildContext context) => const Listview1Screen(),
          'listview2': (BuildContext context) => const Listview2Screen(),
          'card': (BuildContext context) => const CardScreen(),
          'alert': (BuildContext context) => const AlertScreen(),
          'home': (BuildContext context) => const HomeScreen()
        },
        onGenerateRoute: (settings) {
          //print(settings);
          return MaterialPageRoute(builder: (context) => const HomeScreen());
        });
  }
}
