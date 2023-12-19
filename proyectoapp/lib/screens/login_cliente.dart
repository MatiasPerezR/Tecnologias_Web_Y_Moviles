import 'package:flutter/material.dart';
import 'registro.dart';
import 'carusel.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de Sesión'),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Acción para cambiar a la pantalla de inicio de sesión de administrador
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen
            Center(
              child: Image.asset(
                'assets/logo.png',
                height: 150.0,
                width: 150.0,
              ),
            ),

            // Separación
            SizedBox(height: 20),

            // Campo de entrada para correo
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Correo'),
              validator: (value) {
                return null;
              },
            ),

            // Separación vertical
            SizedBox(height: 20),

            // Campo de entrada para contraseña
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Contraseña'),
              validator: (value) {
                // Agrega validaciones según tus requisitos
                return null;
              },
            ),

            // Separación vertical
            SizedBox(height: 20),

            // Botón para iniciar sesión
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MiWidget()),
                );
              },
              style: ElevatedButton.styleFrom(
                // Personaliza el estilo del botón
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
              child: Text('Iniciar Sesión'),
            ),

            // Separación vertical
            SizedBox(height: 20),

            // Botón para redirigir a la pantalla de registro
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationScreen()),
                );
              },
              child: Text('¿Aún no tienes cuenta? Regístrate'),
            ),
          ],
        ),
      ),
    );
  }
}
