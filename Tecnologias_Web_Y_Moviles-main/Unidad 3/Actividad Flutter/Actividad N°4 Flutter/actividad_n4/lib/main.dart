// Importa el archivo que contiene widget
import 'widget.dart';
// Importa el paquete Flutter
import 'package:flutter/material.dart';

// Función principal para ejecutar la aplicación Flutter
void main() {
  // Inicia la aplicación llamando al widget principal (MyApp)
  runApp(MyApp());
}

// Clase principal (MyApp) que extiende StatelessWidget
class MyApp extends StatelessWidget {
  // Método build para construir la interfaz de usuario de la aplicación

  @override
  Widget build(BuildContext context) {
    // Retorna un MaterialApp que define la estructura de la aplicación
    return MaterialApp(
      // Define la pantalla de inicio de la aplicación utilizando miWidget
      home: MiWidget(),
    );
  }
}
