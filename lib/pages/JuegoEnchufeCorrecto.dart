import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Juego Educativo',
      home: const JuegoEnchufeCorrectoPage(),
    );
  }
}

class JuegoEnchufeCorrectoPage extends StatefulWidget {
  const JuegoEnchufeCorrectoPage({super.key});

  @override
  State<JuegoEnchufeCorrectoPage> createState() =>
      _JuegoEnchufeCorrectoPageState();
}

class _JuegoEnchufeCorrectoPageState extends State<JuegoEnchufeCorrectoPage> {
  String mensaje = '';

  void responder(bool esCorrecta) {
    if (esCorrecta) {
      // Si el usuario presiona el botón "CORRECTA"
      Navigator.pushNamed(context, '/correcto_enchufe_1');
    } else {
      // Si el usuario presiona el botón "INCORRECTA"
      Navigator.pushNamed(context, '/precaucion_malo_enchufe_2');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// 🔹 Fondo general PNG
          Positioned.fill(
            child: Image.asset('images/background.png', fit: BoxFit.cover),
          ),

          /// 🔹 Contenido principal
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Título y tip
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF59D),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: const [
                            Text(
                              '¿Es correcta o incorrecta?',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Tip: Revisa todos los objetos peligrosos',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),

                  // Imagen principal (enchufe)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 100,
                        vertical: 10,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 251, 149, 150),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            40,
                          ), // MISMO radio que el Container
                          child: Image.asset(
                            'images/EnchufeCorrecto.png',
                            width: 250,
                            height: 400,
                            fit: BoxFit
                                .cover, // Mejor para rellenar y respetar curvas
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Botones
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () => responder(true),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          minimumSize: const Size(double.infinity, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'CORRECTA',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () => responder(false),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: const Size(double.infinity, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'INCORRECTA',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Mensaje dinámico
                      Text(
                        mensaje,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: mensaje.startsWith('✅')
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
