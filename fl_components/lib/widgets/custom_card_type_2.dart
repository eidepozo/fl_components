import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: Column(
          children: const [
            FadeInImage(
                image: NetworkImage(
                    'https://www.hola.com/imagenes/cine/2009121411875/taylorlautner/programa/humor/0-24-552/24552-a.jpg'),
                placeholder: AssetImage('assets/jar-loading.gif')),
            /*Image(
                image: NetworkImage(
                    'https://www.hola.com/imagenes/cine/2009121411875/taylorlautner/programa/humor/0-24-552/24552-a.jpg'))*/
          ],
        ));
  }
}
