import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    MenuOption(
        route: 'listview1',
        name: 'ListView1 Screen',
        screen: const Listview1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'ListView2 Screen',
        screen: const Listview2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.card_membership_outlined),
    MenuOption(
        route: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.warning),
    MenuOption(
        route: 'home',
        name: 'HomeScreen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'avatar',
        name: 'AvatarScreen',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

/*
  static Map<String, Widget Function(BuildContext)> routes = {
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'home': (BuildContext context) => const HomeScreen()
  };
*/
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
