import 'package:flutter/material.dart';

class HistoriaTemplate extends StatelessWidget {
  final String tituloBarra;
  final List<String> imagenesCorrectas;
  final List<String> imagenesIncorrectas;

  const HistoriaTemplate({
    Key? key,
    required this.tituloBarra,
    required this.imagenesCorrectas,
    required this.imagenesIncorrectas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00C4B4),
      appBar: AppBar(
        title: Text(tituloBarra.toUpperCase()),
        backgroundColor: const Color(0xFF00A896),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSectionHeader("HISTORIA CORRECTA", true),
            const SizedBox(height: 10),
            _buildImageGrid(imagenesCorrectas),
            const SizedBox(height: 30),
            _buildSectionHeader("HISTORIA INCORRECTA", false),
            const SizedBox(height: 10),
            _buildImageGrid(imagenesIncorrectas),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, bool isCorrect) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: isCorrect ? const Color(0xFFFFE082) : const Color(0xFFFFCCBC),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: isCorrect ? const Color(0xFF2E7D32) : const Color(0xFFC62828),
          fontSize: 24,
          fontWeight: FontWeight.w900,
          shadows: [
            Shadow(
              offset: Offset(1, 1),
              color: Colors.black.withOpacity(0.1),
              blurRadius: 1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageGrid(List<String> images) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white, width: 4),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 3,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(images[index], fit: BoxFit.cover),
          ),
        );
      },
    );
  }
}
