import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo crema muy suave
      backgroundColor: const Color(0xFFFAF9F6), 
      appBar: AppBar(
        title: const Text('Finalizar Pedido', style: TextStyle(color: Colors.brown)),
        // AppBar en tono menta pastel
        backgroundColor: const Color(0xFFB2DFDB), 
        elevation: 0,
        // Agregamos los iconos de nuevo como los tenías
        actions: const [
          Icon(Icons.help_outline, color: Colors.brown), 
          SizedBox(width: 10), 
          Icon(Icons.settings, color: Colors.brown), 
          SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // 1. SECCIÓN SUPERIOR: Dos cuadros medianos (Estilo Lavanda Pastel)
              // Basado en la parte superior del 3er boceto
              Row(
                children: [
                  Expanded(child: _buildPastelBox(85, const Color(0xFFE1BEE7))),
                  const SizedBox(width: 15),
                  Expanded(child: _buildPastelBox(85, const Color(0xFFE1BEE7))),
                ],
              ),

              const SizedBox(height: 20),

              // 2. SECCIÓN MEDIA: Dos rectángulos delgados (Estilo Rosa Pastel)
              // Basado en las líneas del 3er boceto
              _buildPastelBox(35, const Color(0xFFF8BBD0)),
              const SizedBox(height: 12),
              _buildPastelBox(35, const Color(0xFFF8BBD0)),

              const SizedBox(height: 20),

              // 3. SECCIÓN PRINCIPAL: Cuadro GRANDE central
              // Es el elemento más grande del 3er boceto
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFFB2DFDB), width: 2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1509440159596-0249088772ff?q=80&w=500&auto=format&fit=crop", 
                    fit: BoxFit.cover,
                    errorBuilder: (c, e, s) => const Icon(Icons.cake, size: 60, color: Colors.pink),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // 4. SECCIÓN INFERIOR: Tres cuadros pequeños con bordes redondeados
              // Los tres elementos finales del boceto
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMiniCard("Pago", Icons.credit_card, const Color(0xFFFFF9C4)),
                  _buildMiniCard("Moped", Icons.moped, const Color(0xFFDCEDC8)),
                  _buildMiniCard("Cupón", Icons.confirmation_number_outlined, const Color(0xFFFFE0B2)),
                ],
              ),

              const SizedBox(height: 35),

              // Botón de acción final
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown[300],
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                ),
                child: const Text(
                  "Confirmar y Volver",
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // --- WIDGETS DE APOYO ---

  Widget _buildPastelBox(double height, Color color) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  Widget _buildMiniCard(String label, IconData icon, Color color) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 4, offset: const Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.brown[600]),
          const SizedBox(height: 6),
          Text(label, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: Colors.brown)),
        ],
      ),
    );
  }
}