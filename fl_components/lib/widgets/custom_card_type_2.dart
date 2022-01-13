import 'package:fl_components/themes/app_themes.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 30,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shadowColor: AppThemes.primary.withOpacity(0.5),
        child: Column(
          children: [
            const FadeInImage(
              image: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1104968010094260224/nZviTxtE_400x400.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 300),
            ),
            Container(
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: const Text('#MADPENGUIN'))
          ],
        ));
  }
}
