import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'home': (BuildContext context) => const HomeScreen()
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
