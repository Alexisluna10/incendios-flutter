import 'package:flutter/material.dart';
import 'package:incendios/pages/medidas.dart';
import 'package:incendios/pages/Prevencion.dart';
import 'package:incendios/pages/jugar.dart';
import 'package:incendios/pages/iniciofuego.dart'; // Ojo con mayusculas/minusculas en tu archivo real
import 'package:incendios/pages/juegofuego.dart';
import 'package:incendios/pages/correcto_enchufe_1.dart';
import 'package:incendios/pages/correcto_enchufe_2.dart';
import 'package:incendios/pages/precaucion_malo_enchufe_1.dart';
import 'package:incendios/pages/precaucion_malo_enchufe_2.dart';
import 'package:incendios/pages/inicioFogata.dart';
import 'package:incendios/pages/PantallaEnchufeJuegoMAL.dart';
import 'package:incendios/pages/JuegoEnchufeCorrecto.dart';

// --- NUEVAS IMPORTACIONES PARA LAS HISTORIETAS ---
import 'package:incendios/pages/historia_alerta.dart';
import 'package:incendios/pages/historia_chispa.dart';
import 'package:incendios/pages/historia_fuego.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Seguridad Infantil',
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      // Aquí definimos todas las rutas de navegación
      routes: {
        '/jugar': (context) => const JugarPage(),

        // Juego del fuego en la cocina
        '/inicio_fuego': (context) => const InicioFuego(),
        '/juego_fuego': (context) => const JuegoFuego(),

        // Juego de enchufes
        '/correcto_enchufe_1': (context) => const CorrectoEnchufe1(),
        '/correcto_enchufe_2': (context) => const CorrectoEnchufe2(),
        '/precaucion_malo_enchufe_1': (context) =>
            const PrecaucionMaloEnchufe1(),
        '/precaucion_malo_enchufe_2': (context) =>
            const PrecaucionMaloEnchufe2(),

        // Juego de la CALLE/Fogata
        '/inicioFogata': (context) => const InicioFogata(),
        '/pantalla_enchufe_juego_mal': (context) => const PreguntaScreen(),
        '/juego_enchufe_correcto': (context) => const JuegoEnchufeCorrectoPage(),

        // --- NUEVAS RUTAS DE HISTORIETAS ---
        '/historia_alerta': (context) => const HistoriaAlertaPage(),
        '/historia_chispa': (context) => const HistoriaChispaPage(),
        '/historia_fuego': (context) => const HistoriaFuegoPage(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00C2CC),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 30,
            left: 40,
            child: Image.asset('images/nube_pequeña.png', width: 50),
          ),
          Positioned(
            top: 100,
            left: 40,
            child: Image.asset('images/estrella.png', width: 40),
          ),
          Positioned(
            top: 110,
            left: 510,
            child: Image.asset('images/nube_pequeña.png', width: 50),
          ),
          Positioned(
            top: 30,
            right: 50,
            child: Image.asset(
              'images/estrella.png',
              width: 70,
              height: 60,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 380,
            left: 25,
            child: Image.asset(
              'images/estrella.png',
              width: 100,
              height: 110,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 630,
            left: 420,
            child: Image.asset(
              'images/nube_pequeña.png',
              width: 100,
              height: 110,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 730,
            left: 350,
            child: Image.asset(
              'images/estrella.png',
              width: 90,
              height: 80,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 780,
            left: 200,
            child: Image.asset(
              'images/nube_pequeña.png',
              width: 90,
              height: 80,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            left: 10,
            bottom: -25,
            child: Image.asset('images/bombero.png', height: 310),
          ),
          Positioned(
            left: 365,
            top: 330,
            child: Image.asset(
              'images/enfermera.png',
              height: 310,
              width: 200,
              fit: BoxFit.contain,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 210.0),
                      child: Image.asset(
                        'images/arcoiris.png',
                        width: 440,
                        height: 180,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Image.asset(
                        'images/nube.png',
                        width: 550,
                        height: 380,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "SEGURIDAD",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Color(0xFFFF2036),
                              letterSpacing: 1.5,
                            ),
                          ),
                          Text(
                            "INFANTIL",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Color(0xFFFFAD1B),
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 0),
                SizedBox(
                  width: 260,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const JugarPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF77618),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      padding: const EdgeInsets.all(14),
                      elevation: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.play_arrow, color: Colors.white, size: 50),
                        SizedBox(width: 15),
                        SizedBox(
                          width: 140,
                          child: Text(
                            "JUGAR",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 260,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Medidas()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6FD239),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      padding: const EdgeInsets.all(14),
                      elevation: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.list_alt, color: Colors.white, size: 50),
                        SizedBox(width: 15),
                        SizedBox(
                          width: 140,
                          child: Text(
                            "MEDIDAS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 260,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Prevencion()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8656C2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      padding: const EdgeInsets.all(14),
                      elevation: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.lock_outline, color: Colors.white, size: 50),
                        SizedBox(width: 15),
                        SizedBox(
                          width: 140,
                          child: Text(
                            "PADRES",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
