import 'package:flutter/material.dart';
import 'package:incendios/pages/jugar.dart';
import 'package:incendios/pages/juegofuego.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioFuego extends StatelessWidget {
  const InicioFuego({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/Fondojuego1.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              const SizedBox(height: 120),
              Text(
                '¡AYUDA AL BOMBERO',
                style: GoogleFonts.fredoka(
                  color: Colors.red.shade700,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'A APAGAR TODOS LOS',
                style: GoogleFonts.fredoka(
                  color: Colors.orange.shade700,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'INCENDIOS!',
                style: GoogleFonts.fredoka(
                  color: Colors.orange.shade700,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/nino1.png', height: 220),
                  const SizedBox(width: 25),
                  Image.asset('images/bombero2.png', height: 220),
                ],
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade700,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  elevation: 6,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const JuegoFuego(),
                    ),
                  );
                },
                child: Text(
                  'JUGAR',
                  style: GoogleFonts.fredoka(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 90),
            ],
          ),
          Positioned(
            top: 40,
            left: 15,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 32,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const JugarPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
