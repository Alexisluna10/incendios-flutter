import 'package:flutter/material.dart';
import 'package:incendios/components/historia_template.dart';

class HistoriaFuegoPage extends StatelessWidget {
  const HistoriaFuegoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HistoriaTemplate(
      tituloBarra: "¡Fuego en el Bosque!",
      imagenesCorrectas: [
        "images/fuego_c1.png",
        "images/fuego_c2.png",
        "images/fuego_c3.png",
        "images/fuego_c4.png",
      ],
      imagenesIncorrectas: [
        "images/fuego_i1.png",
        "images/fuego_i2.png",
        "images/fuego_i3.png",
        "images/fuego_i4.png",
      ],
    );
  }
}
