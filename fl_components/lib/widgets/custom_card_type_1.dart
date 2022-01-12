import 'package:fl_components/themes/app_themes.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo, color: AppThemes.primary),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'In reprehenderit adipisicing et commodo aliquip adipisicing deserunt ipsum ullamco.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                        'Cancelar') /*,
                    style: TextButton.styleFrom(primary: Colors.indigo)*/
                    ),
                TextButton(onPressed: () {}, child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
