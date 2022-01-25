import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Elliot',
      'last_name': 'Ide',
      'email': 'eidepozo@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };
    return Scaffold(
        appBar: AppBar(title: const Text('Input Screen')),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Form(
                  key: myFormKey,
                  child: Column(
                    children: [
                      CustomInputField(
                        hintText: 'Nombre del usuario',
                        labelText: 'Nombre',
                        formProperty: 'first_name',
                        formValues: formValues,
                      ),
                      const SizedBox(height: 20),
                      CustomInputField(
                        hintText: 'Apellido del usuario',
                        labelText: 'Apellido',
                        formProperty: 'last_name',
                        formValues: formValues,
                      ),
                      const SizedBox(height: 20),
                      CustomInputField(
                        hintText: 'Correo del usuario',
                        labelText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        formProperty: 'email',
                        formValues: formValues,
                      ),
                      const SizedBox(height: 20),
                      CustomInputField(
                        hintText: 'Clave del usuario',
                        labelText: 'Contraseña',
                        obscureText: true,
                        formProperty: 'password',
                        formValues: formValues,
                      ),
                      const SizedBox(height: 20),
                      DropdownButtonFormField<String>(
                          value: 'Admin',
                          items: const [
                            DropdownMenuItem(
                                value: 'Admin', child: Text('Admin')),
                            DropdownMenuItem(
                                value: 'Developer', child: Text('Developer'))
                          ],
                          onChanged: (value) {
                            print(value);
                            formValues['role'] = value ?? 'Admin';
                          }),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                            // dispara las validaciones de cada input
                            if (!myFormKey.currentState!.validate()) {
                              print('Formulario no válido');
                              return;
                            }
                            print(formValues);
                          },
                          child: const SizedBox(
                              width: double.infinity,
                              child: Center(child: Text('Guardar'))))
                    ],
                  ),
                ))));
  }
}
