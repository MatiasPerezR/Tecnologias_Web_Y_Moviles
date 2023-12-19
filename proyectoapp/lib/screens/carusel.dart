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
        title: Text('Tienda'), // Título de la barra superior
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
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrito',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return _buildCarrusel(); // carrusel
      case 1:
        return _buildCarrito(); // carrito
      case 2:
        return _buildPerfil(); // perfil
      default:
        return Container();
    }
  }

  Widget _buildCarrusel() {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            items: [
              _buildCarruselItem(
                  'assets/audifonos.jpg', 'audifonos 1', '\$19.999'),
              _buildCarruselItem(
                  'assets/audifonos2.png', 'audifono 2', '\$19.999'),
              _buildCarruselItem(
                  'assets/audifonos3.jpg', 'audifono 3', '\$39.999'),
            ],
            options: CarouselOptions(
              height: 400.0,
              aspectRatio: 16 / 9,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
          ),
          SizedBox(height: 20.0), // Espacio ajustado

          CarouselSlider(
            items: [
              _buildCarruselItem(
                'assets/telefono.jpg',
                'telefono 1',
                '\$49.999',
              ),
              _buildCarruselItem(
                  'assets/telefono2.jpg', 'telefono 2', '\$69.999'),
              _buildCarruselItem(
                  'assets/telefono3.jpg', 'telefono 3', '\$69.999'),
            ],
            options: CarouselOptions(
              height: 400.0,
              aspectRatio: 16 / 9,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCarruselItem(
      String imagePath, String productName, String productPrice) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 150.0, fit: BoxFit.contain),
          SizedBox(height: 10.0),
          Text(
            productName,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5.0),
          Text(
            'Precio: $productPrice',
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  /// Método para construir el contenido de la pestaña de carrito
  Widget _buildCarrito() {
    return Center(
      child: Text('Contenido del carrito aquí'),
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
            backgroundImage: AssetImage('assets/perfl.png'),
          ),
          SizedBox(height: 20.0),
          Text(
            'Nombre: Usuario',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'Correo: usuario@correo.com',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {},
            child: Text('Editar Perfil'),
          ),
        ],
      ),
    );
  }
}
