import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incendios/pages/FogataGana.dart';
import 'package:incendios/pages/FogataPierde.dart'; 

class JuegoFogata extends StatelessWidget {
  const JuegoFogata({super.key});

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
            child: Image.asset(
              "images/Fondo_noche1.png",
              fit: BoxFit.cover,
            ),
          ),

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
            top: size.height * 0.35,
            left: 20,
            right: 20,
            child: Text(
              "SELECCIONA\nLA OPCIÓN CORRECTA",
              textAlign: TextAlign.center,
              style: GoogleFonts.fredoka(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          /// arbol izquierdo (al fondo)
          Positioned(
            left: -50,
            bottom: pastoHeight + 5,
            child: Image.asset(
              "images/arbol.png",
              height: 130,
            ),
          ),
           /// arlbol de medio izquierdo (
           Positioned(
            left: 100,
            bottom: pastoHeight + 5,
            child: Image.asset(
              "images/arbol.png",
              height: 130,
            ),
          ),
          /// arbol derecho 
          Positioned(
            right: 50,
            bottom: pastoHeight + 3,
            child: Image.asset(
              "images/arbol.png",
              height: 150,
            ),
          ),
            /// arbol en medio derecho 
          Positioned(
            right: -50,
            bottom: pastoHeight + 3,
            child: Image.asset(
              "images/arbol.png",
              height: 150,
            ),
          ),
        
         ///Pocicion de bombero 
              Positioned(
                left: -30,
                bottom: pastoHeight - 200,
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0), //  lo voltea en X
                  child: Image.asset(
                    "images/bombero2.png",
                    height: 350,
                  ),
                ),
                ),
          ///Pocicion de fogata
          Positioned(
            left: 50,
            right: 0,
            bottom: pastoHeight - 60,
            child: Center(
              child: Image.asset(
                "images/Fogata.png",
                height: 200,
              ),
            ),
          ),
          // Pocicion de cubeta y redirrecion
            Positioned(
              left: 100,
              bottom: 30,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FogataGana(), 
                    ),
                  );
                },
                child: Image.asset(
                  "images/cubeta.png",
                  height: 180,
                ),
              ),
            ),
          /// Pocicion de gasolina y redireccion
        Positioned(
            right: 40,         
            bottom: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FogataPierde(),
                  ),
                );
              },
              child: Image.asset(
                "images/gasolina.png",
                height: 150,
              ),
            ),
          ),
          Positioned(
            top: 40,
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
        ],
      ),
    );
  }
}
