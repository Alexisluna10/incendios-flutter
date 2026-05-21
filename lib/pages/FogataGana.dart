import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incendios/pages/jugar.dart';

class FogataGana extends StatelessWidget {
  const FogataGana({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double pastoHeight = size.height * 0.28;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: -90,
            child: Image.asset("images/Fondo_noche1.png", fit: BoxFit.cover),
          ),

          Positioned(
            top: 40,
            left: 30,
            child: Image.asset("images/estrella.png", width: 40),
          ),
          Positioned(
            top: 80,
            right: 50,
            child: Image.asset("images/estrella.png", width: 40),
          ),
          Positioned(
            top: 140,
            left: 90,
            child: Image.asset("images/estrella.png", width: 40),
          ),
          Positioned(
            top: 60,
            right: 140,
            child: Image.asset("images/nube_pequeña.png", width: 60),
          ),
          Positioned(
            top: 160,
            left: 30,
            child: Image.asset("images/nube_pequeña.png", width: 60),
          ),
          Positioned(
            top: size.height * 0.06,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset("images/letrero_apaga.png", height: 200),
            ),
          ),
          Positioned(
            top: size.height * 0.40,
            left: 20,
            right: 20,
            child: Text(
              "¡FELICIDADES,\nAPAGASTE EL FUEGO!",
              textAlign: TextAlign.center,
              style: GoogleFonts.fredoka(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          /// ÁRBOL izqierdo
          Positioned(
            left: -25,
            bottom: pastoHeight + 5,
            child: Image.asset("images/arbol.png", height: 130),
          ),

          /// ÁRBOL izqierdo enmedio
          Positioned(
            left: 70,
            bottom: pastoHeight + 5,
            child: Image.asset("images/arbol.png", height: 130),
          ),

          /// ÁRBOL izqierdo enmedio
          Positioned(
            left: 150,
            bottom: pastoHeight + 5,
            child: Image.asset("images/arbol.png", height: 130),
          ),
          //Arbol de la derecha
          Positioned(
            right: -60,
            bottom: pastoHeight + 3,
            child: Image.asset("images/arbol.png", height: 150),
          ),
          //Arbol de la derecha enmedio
          Positioned(
            right: 35,
            bottom: pastoHeight + 3,
            child: Image.asset("images/arbol.png", height: 150),
          ),

          /// Pocicion del bombero
          Positioned(
            left: -20,
            bottom: pastoHeight - 150,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..scale(-1.0, 1.0, 1.0), // lo voltea en X
              child: Image.asset("images/bombero2.png", height: 300),
            ),
          ),

          /// Pocicon de fogata apagada
          Positioned(
            left: 0,
            right: 0,
            bottom: pastoHeight - 125,
            child: Center(
              child: Image.asset("images/Fogata_apagada.png", height: 160),
            ),
          ),

          /// Pocicion del niño
          Positioned(
            right: 80,
            bottom: pastoHeight - 90,
            child: Image.asset("images/Niño_apagando.png", height: 250),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 35,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const JugarPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE53535), // rojo
                  padding: const EdgeInsets.symmetric(
                    horizontal: 70,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "SALIR",
                  style: GoogleFonts.fredoka(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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
