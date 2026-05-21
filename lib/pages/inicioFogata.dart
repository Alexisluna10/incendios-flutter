import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incendios/pages/juegoFogata.dart';

class InicioFogata extends StatefulWidget {
  const InicioFogata({super.key});

  @override
  State<InicioFogata> createState() => _InicioFogataState();
}

class _InicioFogataState extends State<InicioFogata> {
  int pantallaActual = 1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double pastoHeight = size.height * 0.28;

    return Scaffold(
      body: Stack(
        children: [
          ///Fondo de noche  ajustable
          Positioned(
            left: 0,
            right: 0,
            bottom: -150,
            child: Image.asset(
              "images/Fondo_noche1.png",
              fit: BoxFit.scaleDown,
            ),
          ),
          if (pantallaActual == 1 || pantallaActual == 2)
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
          // PANTALLA 1
          if (pantallaActual == 1) ...[
            Positioned(
              top: size.height * 0.39,
              left: 20,
              right: 20,
              child: Text(
                "AYUDA AL BOMBERO\nA APAGAR LA FOGATA",
                textAlign: TextAlign.center,
                style: GoogleFonts.fredoka(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: pastoHeight + -140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset("images/nino1.png", height: 280),
                  const SizedBox(width: 25),
                  Image.asset("images/bombero2.png", height: 280),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: pastoHeight - 150,
              child: Center(
                child: Image.asset("images/Fogata.png", height: 200),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 40,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      pantallaActual = 2;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8C52FF),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 60,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "JUGAR",
                    style: GoogleFonts.fredoka(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
          // PANTALLA 2
          if (pantallaActual == 2) ...[
            /// TEXTO BLANCO EN LA PARTE SUPERIOR
            Positioned(
              top: size.height * 0.38,
              left: 20,
              right: 20,
              child: Text(
                "HAY UNA FOGATA\nENCENDIDA, ESTO PUEDE\nQUEMAR EL BOSQUE",
                textAlign: TextAlign.center,
                style: GoogleFonts.fredoka(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            /// arbol izquierdo
            Positioned(
              left: -30,
              bottom: pastoHeight - 90,
              child: Image.asset("images/arbol.png", height: 140),
            ),

            /// arbol derecho
            Positioned(
              right: 100,
              bottom: pastoHeight - 60,
              child: Image.asset("images/arbol.png", height: 140),
            ),
            //pocicion de fogata
            Positioned(
              left: -170,
              right: 0,
              bottom: pastoHeight - 150,
              child: Center(
                child: Image.asset("images/Fogata.png", height: 250),
              ),
            ),

            ///pocicon del bombero
            Positioned(
              right: -40,
              bottom: pastoHeight - 250,
              child: Image.asset("images/bombero2.png", height: 400),
            ),
            Positioned(
              left: 25,
              bottom: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const JuegoFogata(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8C52FF), // morado
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  "CONTINUAR",
                  style: GoogleFonts.fredoka(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
          ],
          Positioned(
            top: 35,
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
