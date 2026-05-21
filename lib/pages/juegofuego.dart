import 'package:flutter/material.dart';
import 'package:incendios/pages/jugar.dart';
import 'package:google_fonts/google_fonts.dart';

class JuegoFuego extends StatefulWidget {
  const JuegoFuego({super.key});

  @override
  State<JuegoFuego> createState() => _JuegoFuegoState();
}

class _JuegoFuegoState extends State<JuegoFuego> {
  int pantallaActual = 1;

  String imagenActual = 'images/Decicion.png';
  String mensaje = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(color: const Color(0xFF73CDC0)),

          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: [
              const SizedBox(height: 10),

              if (pantallaActual == 1) ...[
                Text(
                  '¡OH NO!\nLA ESTUFA ESTÁ ENCENDIDA,\nAYÚDAME A APAGARLA.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fredoka(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 20),

                _buildMainImage(imagenActual),

                const SizedBox(height: 25),

                Text(
                  '¡SELECCIONA LA OPCIÓN CORRECTA!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fredoka(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  children: [
                    Expanded(
                      child: OpcionCard(
                        image_caption: "Ignorar y no hacer nada",
                        image_location: "images/ignorar.png",
                        color_fondo_caption: const Color(0xFFFFA238),
                        onTap: () {
                          setState(() {
                            pantallaActual = 2;
                            imagenActual = 'images/perdio.png';
                            mensaje = '¡PERDISTE TU CASA POR NO APAGAR EL GAS!';
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: OpcionCard(
                        image_caption: "Girar la perilla",
                        image_location: "images/apagar.png",
                        color_fondo_caption: const Color.fromRGBO(
                          76,
                          175,
                          80,
                          1,
                        ),
                        onTap: () {
                          setState(() {
                            pantallaActual = 3;
                            imagenActual = 'images/gano.png';
                            mensaje =
                                '¡EXCELENTE!, SALVASTE TU CASA POR APAGAR EL FUEGO';
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],

              if (pantallaActual == 2) ...[
                const SizedBox(height: 10),
                Text(
                  '¡OH NO!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fredoka(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),

                const SizedBox(height: 10),

                _buildMainImage(imagenActual),

                const SizedBox(height: 20),

                Text(
                  mensaje,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fredoka(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        pantallaActual = 1;
                        imagenActual = 'images/Decicion.png';
                        mensaje = '';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 124, 77, 255),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 8,
                    ),
                    child: Text(
                      'REINTENTAR',
                      style: GoogleFonts.fredoka(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],

              if (pantallaActual == 3) ...[
                const SizedBox(height: 10),
                Text(
                  '¡FELICIDADES!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fredoka(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 10, 85, 41),
                  ),
                ),

                const SizedBox(height: 10),

                _buildMainImage(imagenActual),

                const SizedBox(height: 20),

                Text(
                  mensaje,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.fredoka(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const JugarPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade600,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 8,
                    ),
                    child: Text(
                      'CONTINUAR',
                      style: GoogleFonts.fredoka(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),
          Positioned(
            top: 35,
            left: 10,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const JugarPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainImage(String img) {
    return Card(
      elevation: 8,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(img, fit: BoxFit.cover, height: 350),
      ),
    );
  }
}

class OpcionCard extends StatelessWidget {
  final String image_location;
  final String image_caption;
  final Color color_fondo_caption;
  final VoidCallback? onTap;

  const OpcionCard({
    super.key,
    required this.image_location,
    required this.image_caption,
    required this.color_fondo_caption,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 4),
            blurRadius: 6,
          ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              color: color_fondo_caption,
              padding: const EdgeInsets.symmetric(vertical: 12),
              width: double.infinity,
              child: Text(
                image_caption,
                textAlign: TextAlign.center,
                style: GoogleFonts.fredoka(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Image.asset(
              image_location,
              height: 95,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
