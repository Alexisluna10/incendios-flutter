import 'package:flutter/material.dart';
import 'package:incendios/components/historia_template.dart';

class HistoriaAlertaPage extends StatelessWidget {
  const HistoriaAlertaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HistoriaTemplate(
      tituloBarra: "¡Alerta en la Cocina!",
      imagenesCorrectas: [
        "images/alerta_c1.png",
        "images/alerta_c2.png",
        "images/alerta_c3.png",
        "images/alerta_c4.png",
      ],
      imagenesIncorrectas: [
        "images/alerta_i1.png",
        "images/alerta_i2.png",
        "images/alerta_i3.png",
        "images/alerta_i4.png",
      ],
    );
  }
}
