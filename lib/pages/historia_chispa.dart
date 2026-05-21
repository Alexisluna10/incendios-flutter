import 'package:flutter/material.dart';
import 'package:incendios/components/historia_template.dart';

class HistoriaChispaPage extends StatelessWidget {
  const HistoriaChispaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HistoriaTemplate(
      tituloBarra: "¡Cuidado con la Chispa!",
      imagenesCorrectas: [
        "images/chispa_c1.png",
        "images/chispa_c2.png",
        "images/chispa_c3.png",
        "images/chispa_c4.png",
      ],
      imagenesIncorrectas: [
        "images/chispa_i1.png",
        "images/chispa_i2.png",
        "images/chispa_i3.png",
        "images/chispa_i4.png",
      ],
    );
  }
}
