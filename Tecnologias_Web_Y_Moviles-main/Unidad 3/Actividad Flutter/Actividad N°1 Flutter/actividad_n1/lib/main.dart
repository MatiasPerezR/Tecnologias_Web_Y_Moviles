import 'package:flutter/material.dart';

// Widget principal de la aplicación
class MiWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(':D'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Texto que se muestra en el centro
            Text(
              '¡Hola Mundo!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20), // Espaciador vertical

            // Botón elevado que imprime "¡Hola Mundo!" en la consola al presionar
            ElevatedButton(
              onPressed: () {
                print('¡Hola Mundo!');
              },
              child: Text('Presionar para saludar'),
            ),
          ],
        ),
      ),
    );
  }
}

// Punto de entrada principal de la aplicación
void main() {
  runApp(MyApp());
}

// Widget principal que inicializa la aplicación
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MiWidget(), // Usa el widget personalizado como página principal
    );
  }
}
