import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

/// Widget principal de la aplicación
class MiWidget extends StatefulWidget {
  @override
  _MiWidgetState createState() => _MiWidgetState();
}

class _MiWidgetState extends State<MiWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi App'), // Título de la barra superior
      ),
      body: _buildBody(), // Cuerpo de la aplicación
      bottomNavigationBar: BottomNavigationBar(
        // Barra de navegación en la parte inferior
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Carrusel', // Etiqueta para la pestaña de carrusel
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil', // Etiqueta para la pestaña de perfil
          ),
        ],
      ),
    );
  }

  /// Método para construir el cuerpo de la aplicación según la pestaña actual
  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return _buildCarrusel(); // Contenido de la pestaña de carrusel
      case 1:
        return _buildPerfil(); // Contenido de la pestaña de perfil
      default:
        return Container(); // Contenedor vacío por defecto
    }
  }

  /// Método para construir el contenido de la pestaña de carrusel
  Widget _buildCarrusel() {
    return Center(
      child: CarouselSlider(
        items: [
          Container(
            child: Image.asset(
              'assets/2.avif',
            ),
          ),
          Container(
            child: Image.asset('assets/3.jpg'),
          ),
          Container(
            child: Image.asset(
              'assets/1.avif',
            ),
          ),
        ],
        options: CarouselOptions(
          height: 200.0,
          aspectRatio: 16 / 9,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
        ),
      ),
    );
  }

  /// Método para construir el contenido de la pestaña de perfil
  Widget _buildPerfil() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage:
                AssetImage('assets/perfil.avif'), // Imagen de perfil
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar "Editar Perfil"
            },
            child: Text('Editar Perfil'),
          ),
        ],
      ),
    );
  }
}
