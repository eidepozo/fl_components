import 'package:fl_components/themes/app_themes.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SliderScreen')),
      body: Column(children: [
        Slider(
            min: 40,
            max: 500,
            activeColor: AppThemes.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null),
        SwitchListTile(
            title: const Text('Habilitar Slider'),
            activeColor: AppThemes.primary,
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            }),
        /*Checkbox(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }),
        CheckboxListTile(
            title: const Text('Habilitar Slider'),
            activeColor: AppThemes.primary,
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }),
        Switch(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            }),
        */
        Expanded(
          child: SingleChildScrollView(
            child: Image(
                image: const NetworkImage(
                    'https://e7.pngegg.com/pngimages/752/512/png-clipart-mister-fantastic-human-torch-invisible-woman-thing-fantastic-four-iron-electronics-superhero-thumbnail.png'),
                fit: BoxFit.contain,
                width: _sliderValue),
          ),
        ),
        const SizedBox(height: 30)
      ]),
    );
  }
}
