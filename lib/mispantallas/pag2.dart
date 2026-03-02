import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Cambiamos a un fondo Azul Profundo (Eliminamos el rojo)
      backgroundColor: const Color(0xFF1A237E), 
      appBar: AppBar(
        title: const Text('Menú Especial', style: TextStyle(color: Colors.white)),
        // AppBar en un tono azul más oscuro
        backgroundColor: const Color(0xFF0D47A1),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [
          // Iconos solicitados: Estrella y Compartir
          Icon(Icons.star, color: Colors.orangeAccent),
          SizedBox(width: 15),
          Icon(Icons.share, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SECCIÓN SUPERIOR: Los 3 círculos sobre fondo blanco
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCircle(Colors.blue[50]!),
                  _buildCircle(Colors.orangeAccent), // Círculo central resaltado
                  _buildCircle(Colors.blue[50]!),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // SECCIÓN MEDIA: Dos cuadros blancos (Basado en el diseño central)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  _buildSimulationLine(Colors.white54),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(child: _buildBox(100, Colors.white)),
                      const SizedBox(width: 15),
                      Expanded(child: _buildBox(100, Colors.white)),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // SECCIÓN INFERIOR: Un rectángulo GRANDE (Inspirado en el tercer boceto)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  _buildSimulationLine(Colors.orangeAccent.withOpacity(0.5)),
                  const SizedBox(height: 15),
                  _buildBox(150, Colors.orangeAccent), // Cuadro grande naranja
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Botón de navegación final
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/tercera'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF1A237E),
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text("Ver Carrito", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  // --- COMPONENTES PERSONALIZADOS ---

  Widget _buildCircle(Color color) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4, offset: const Offset(0, 2))
        ],
      ),
      child: const Icon(Icons.restaurant_menu, color: Colors.indigo, size: 30),
    );
  }

  Widget _buildBox(double height, Color color, {double? width}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  Widget _buildSimulationLine(Color color) {
    return Container(
      height: 8,
      width: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}