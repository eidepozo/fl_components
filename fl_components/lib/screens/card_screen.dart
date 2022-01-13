import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

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
            SizedBox(height: 30),
            CustomCardType2(
                imageUrl: 'https://i.ytimg.com/vi/28IRaMc1AiU/hqdefault.jpg',
                title: 'Mr. Incredible Stage 1'),
            SizedBox(height: 30),
            CustomCardType2(
                imageUrl: 'https://i.ytimg.com/vi/2UFMEgixObs/hqdefault.jpg',
                title: 'Mr. Incredible Stage 2'),
            SizedBox(height: 30),
            CustomCardType2(
                imageUrl:
                    'https://i.ytimg.com/vi/KZB5If5WSuU/maxresdefault.jpg',
                title: 'Mr. Incredible Stage 4'),
            SizedBox(height: 50)
          ],
        ));
  }
}
