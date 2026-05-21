import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrecaucionMaloEnchufe2 extends StatelessWidget {
  const PrecaucionMaloEnchufe2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Imagen de fondo
          Image.asset("images/F.png", fit: BoxFit.cover),
          // Botón de retroceso
          Positioned(
            top: 30,
            left: 10,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          // Contenido encima del fondo
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                Container(
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 229, 21, 21),
                  ),
                  child: Center(
                    child: Text(
                      "¡Cuidado!",
                      style: GoogleFonts.balooBhaijaan2(
                        fontSize: 55,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  height: 450,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 243, 16, 16),
                  ),
                  child: Center(
                    child: Text(
                      "Ese cable\nestá bien,\nrevisa otra\nvez.",
                      style: GoogleFonts.balooBhaijaan2(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/juego_enchufe_correcto');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 144, 80, 255),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 130,
                      vertical: 20,
                    ),
                  ),
                  child: Text(
                    "Reintentar",
                    style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
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
