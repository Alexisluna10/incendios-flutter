import 'package:flutter/material.dart';
import 'package:incendios/pages/inicioFogata.dart';

class JugarPage extends StatelessWidget {
  const JugarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Fondo
          Image.asset("images/F.png", fit: BoxFit.cover),

          // 1. IMPORTANTE: Center y ConstrainedBox para evitar que se estiren en PC
          Center(
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 600,
              ), // Ancho máximo tipo Tablet
              child: ListView(
                padding: const EdgeInsets.only(
                  top: 40.0,
                  left: 30.0,
                  right: 30.0,
                  bottom: 20.0,
                ),
                children: <Widget>[
                  // --- SECCIÓN 1: JUGAR ---
                  const Text(
                    "JUGAR",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),

                  LugarCard(
                    image_caption: "CASA",
                    image_location: "images/casa.png",
                    color_fondo_caption: const Color(0xFFF3C74A),
                    onTap: () {
                      Navigator.pushNamed(context, '/inicio_fuego');
                    },
                  ),

                  // Juego de Enchufes Correctos
                  LugarCard(
                    image_caption: "ELECTRICOS",
                    image_location: "images/patio.png",
                    color_fondo_caption: const Color(0xFFCE2D2E),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/pantalla_enchufe_juego_mal',
                      );
                    },
                  ),

                  LugarCard(
                    image_caption: "CALLE ",
                    image_location: "images/calle.png",
                    color_fondo_caption: const Color(0xFFC8C101),
                    onTap: () {
                      Navigator.pushNamed(context, '/inicioFogata');
                    },
                  ),

                  const SizedBox(height: 40),

                  // --- SECCIÓN 2: HISTORIETAS ---
                  const Text(
                    "HISTORIETAS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 3.0,
                          color: Colors.black38,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // 1. Alerta -> Lleva a '/historia_alerta'
                  HistorietaCard(
                    titulo: "¡ALERTA!",
                    image_location: "images/casa1.png",
                    color_tema: const Color(0xFFF3C74A),
                    onTap: () {
                      Navigator.pushNamed(context, '/historia_alerta');
                    },
                  ),

                  // 2. Chispa -> Lleva a '/historia_chispa'
                  HistorietaCard(
                    titulo: "¡CHISPA!",
                    image_location: "images/patio1.png",
                    color_tema: const Color(0xFF2ECC71),
                    onTap: () {
                      Navigator.pushNamed(context, '/historia_chispa');
                    },
                  ),

                  // 3. Fuego -> Lleva a '/historia_fuego'
                  HistorietaCard(
                    titulo: "¡FUEGO!",
                    image_location: "images/calle1.png",
                    color_tema: const Color(0xFFE74C3C),
                    onTap: () {
                      Navigator.pushNamed(context, '/historia_fuego');
                    },
                  ),
                ],
              ),
            ),
          ),

          // Botón Atrás
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
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// --- WIDGETS ---

class LugarCard extends StatelessWidget {
  final String image_location;
  final String image_caption;
  final Color color_fondo_caption;
  final VoidCallback? onTap;

  LugarCard({
    required this.image_location,
    required this.image_caption,
    required this.color_fondo_caption,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white, // Fondo blanco detrás por si acaso
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              color: color_fondo_caption,
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                image_caption,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
            Image.asset(
              image_location,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

// 2. HistorietaCard AJUSTADA (Igual que LugarCard)
// Esto soluciona lo borroso porque usa la misma lógica de renderizado
class HistorietaCard extends StatelessWidget {
  final String image_location;
  final String titulo;
  final Color color_tema;
  final VoidCallback? onTap;

  const HistorietaCard({
    Key? key,
    required this.image_location,
    required this.titulo,
    required this.color_tema,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      clipBehavior: Clip.antiAlias,
      // Usamos borderRadius 15 igual que arriba para consistencia
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 6,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            // BARRA DE TÍTULO (Igual que en LugarCard)
            Container(
              width: double.infinity,
              color: color_tema,
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                titulo,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: Offset(1, 1),
                      blurRadius: 2.0,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
            ),

            // IMAGEN (Igual que en LugarCard - Sin Padding extra)
            // Al quitar el padding y usar el mismo height, se verá nítida.
            Image.asset(
              image_location,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
