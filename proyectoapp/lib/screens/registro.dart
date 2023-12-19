import 'package:flutter/material.dart';
import 'login_cliente.dart';

class RegistrationScreen extends StatelessWidget {
  // Controladores para los campos de entrada
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController rutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Campo de entrada para Nombre
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: 'Nombre'),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Por favor, ingresa tu nombre';
                    }
                    return null;
                  },
                ),

                // Espaciado vertical
                SizedBox(height: 16),

                // Campo de entrada para Correo
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'Correo'),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Por favor, ingresa tu correo';
                    } else if (!RegExp(
                            r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                        .hasMatch(value!)) {
                      return 'Por favor, ingresa un correo válido';
                    }
                    return null;
                  },
                ),

                // Espaciado vertical
                SizedBox(height: 16),

                // Campo de entrada para Contraseña
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Contraseña'),
                  validator: (value) {
                    // Agrega las validaciones necesarias
                    return null;
                  },
                ),

                // Espaciado vertical
                SizedBox(height: 16),

                // Campo de entrada para Teléfono
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(labelText: 'Teléfono'),
                  validator: (value) {
                    // Agrega las validaciones necesarias
                    return null;
                  },
                ),

                // Espaciado vertical
                SizedBox(height: 16),

                // Campo de entrada para RUT
                TextFormField(
                  controller: rutController,
                  decoration: InputDecoration(labelText: 'RUT'),
                  validator: (value) {
                    // Agrega las validaciones necesarias
                    return null;
                  },
                ),

                // Espaciado vertical
                SizedBox(height: 16),

                // Botón para realizar el registro
                ElevatedButton(
                  onPressed: () {
                    // Navegar a la pantalla de inicio de sesión
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                      'Registrar'), // Cambia el texto según tus necesidades
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
