import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FogataPierde extends StatelessWidget {
  const FogataPierde({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double pastoHeight = size.height * 0.28; 

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: -90,
            child: Image.asset(
              "images/Fondo_quemado.png",
              fit: BoxFit.cover,
            ),
          ),
      
          //Pocion de estrellas 
          Positioned(top: 40, left: 30, child: Image.asset("images/estrella.png", width: 40)),
          Positioned(top: 80, right: 50, child: Image.asset("images/estrella.png", width: 40)),
          Positioned(top: 140, left: 90, child: Image.asset("images/estrella.png", width: 40)),
          Positioned(top: 60, right: 140, child: Image.asset("images/nube_pequeña.png", width: 60)),
          Positioned(top: 160, left: 30, child: Image.asset("images/nube_pequeña.png", width: 60)),
          Positioned(
            top: size.height * 0.06,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                "images/letrero_apaga.png",
                height: 200,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.40,
            left: 20,
            right: 20,
            child: Text(
              "¡TE EQUIVOCASTE,\nSE QUEMÓ\nEL BOSQUE!",
              textAlign: TextAlign.center,
              style: GoogleFonts.fredoka(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          /// Pocicion del bombero
          Positioned(
            left: -10,
            bottom: pastoHeight - 150,
            child: Image.asset(
              "images/bombero_asustado.png",
              height: 300,
            ),
          ),
          /// Pocicion de fogata
          Positioned(
            left: 0,
            right: 0,
            bottom: pastoHeight - 100,
            child: Center(
              child: Image.asset(
                "images/Fogata.png",
                height: 200,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 35,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8C52FF),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "REINTENTAR",
                  style: GoogleFonts.fredoka(
                    fontSize: 30,
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
