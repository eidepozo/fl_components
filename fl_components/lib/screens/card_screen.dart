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
                imageUrl: 'http://cdn.eso.org/images/screen/millour-01-cc.jpg',
                title: 'Landscape'),
            CustomCardType2(
                imageUrl:
                    'http://www.anthroencyclopedia.com/files/styles/full-article-style/public/landscape_0.jpg',
                title: 'Landscape 2'),
            SizedBox(height: 50)
          ],
        ));
  }
}
