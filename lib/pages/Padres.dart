import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: PantallaConFondo()));
}

class PantallaConFondo extends StatelessWidget {
  const PantallaConFondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Imagen de fondo (background.png)
          Positioned.fill(
            child: Image.asset(
              'images/AdvertenciaPrecauciones.png',
              fit: BoxFit.cover,
            ),
          ),

          /// Contenido encima del fondo
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Atrás', style: TextStyle(fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.8),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
