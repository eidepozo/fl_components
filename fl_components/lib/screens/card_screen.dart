import 'package:flutter/material.dart';

import 'package:fl_components/widgets/custom_card_type_1.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            CustomCardType1(),
            CustomCardType1(),
            CustomCardType1(),
            CustomCardType1(),
            CustomCardType1()
          ],
        ));
  }
}
