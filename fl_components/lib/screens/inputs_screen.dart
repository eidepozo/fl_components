import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Input Screen')),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: const [
                    CustomInputField(
                        hintText: 'Nombre del usuario', labelText: 'Nombre'),
                    SizedBox(height: 20),
                    CustomInputField(
                        hintText: 'Apellido del usuario',
                        labelText: 'Apellido'),
                    SizedBox(height: 20),
                    CustomInputField(
                      hintText: 'Correo del usuario',
                      labelText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 20),
                    CustomInputField(
                      hintText: 'Clave del usuario',
                      labelText: 'Contraseña',
                      obscureText: true,
                    ),
                  ],
                ))));
  }
}
