import 'package:flutter/material.dart';

class Prevencion extends StatelessWidget {
  Prevencion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F7FA),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 3,
        backgroundColor: Colors.teal.shade500,
        title: Row(
          children: const [
            Icon(Icons.family_restroom, color: Colors.white, size: 28),
            SizedBox(width: 10),
            Text(
              'Cuida a tus hijos',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Encabezado
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              decoration: BoxDecoration(
                color: Colors.teal.shade400,
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal.shade200,
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: const [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.warning_amber_rounded,
                          color: Colors.yellowAccent, size: 30),
                      SizedBox(width: 10),
                      Text(
                        'Evita accidentes en casa',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.warning_amber_rounded,
                          color: Colors.yellowAccent, size: 30),
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Pequeñas acciones previenen grandes accidentes',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Lista de prevenciones
            _buildCard(
              color: Colors.orange,
              icon: Icons.local_fire_department,
              text:
                  'Mantén líquidos calientes fuera del alcance de los niños.',
            ),
            _buildCard(
              color: Colors.blueGrey,
              icon: Icons.power_off,
              text: 'No dejes cables de planchas o cafeteras colgando.',
            ),
            _buildCard(
              color: Colors.lightBlue,
              icon: Icons.bathtub,
              text: 'Comprueba la temperatura del agua antes del baño.',
            ),
            _buildCard(
              color: Colors.redAccent,
              icon: Icons.close,
              text: 'No permitas que los niños jueguen cerca de la cocina.',
            ),
            _buildCard(
              color: Colors.green,
              icon: Icons.cleaning_services,
              text:
                  'Guarda los productos de limpieza y medicamentos en lugares altos o cerrados con llave.',
            ),
            _buildCard(
              color: Colors.deepPurple,
              icon: Icons.electrical_services,
              text:
                  'Coloca protectores en los enchufes para evitar descargas eléctricas.',
            ),
            _buildCard(
              color: Colors.amber,
              icon: Icons.stairs,
              text:
                  'Usa barandales o puertas de seguridad en escaleras para evitar caídas.',
            ),
            _buildCard(
              color: Colors.teal,
              icon: Icons.home,
              text:
                  'Asegura los muebles pesados a la pared para evitar que se caigan si los niños trepan.',
            ),

            const SizedBox(height: 25),

            // Mensaje final destacado
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade100,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.yellow.shade600, width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.lightbulb, color: Colors.amber, size: 28),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        'Recuerda: la prevención empieza en casa.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // Widget reutilizable para cada recomendación
  Widget _buildCard({
    required Color color,
    required IconData icon,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: color.withOpacity(0.3),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Icon(icon, color: Colors.white, size: 28),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    height: 1.3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}