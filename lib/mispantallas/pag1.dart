import 'package:flutter/material.dart';
// Asegúrate de que esta ruta sea la correcta en tu proyecto
import 'package:myapp/mispantallas/pag2.dart'; 

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8E1),
      appBar: AppBar(
        title: const Text('Ambar Mercado 6J'),
        backgroundColor: Colors.brown[400],
        leadingWidth: 100,
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.bakery_dining),
              onPressed: () {
                // Navegación al catálogo
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Pantalla2()),
                );
              },
            ),
            IconButton(icon: const Icon(Icons.shopping_basket), onPressed: () {}),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _cuadradoImagen(Colors.orange[100]!, url: 'https://raw.githubusercontent.com/AmbarKislev/Imagenes-Examen/refs/heads/main/pan1.jpg'),
                  _cuadradoImagen(Colors.orange[300]!, url: 'https://raw.githubusercontent.com/AmbarKislev/Imagenes-Examen/refs/heads/main/cafe1.jfif', esDestacado: true),
                  _cuadradoImagen(Colors.orange[100]!, url: 'https://raw.githubusercontent.com/AmbarKislev/Imagenes-Examen/refs/heads/main/pan3.webp'),
                ],
              ),
              
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Divider(color: Colors.brown, thickness: 2),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tradición en cada bocado",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown[800], fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "En nuestra panadería, fusionamos recetas ancestrales con ingredientes frescos para ofrecerte el pan más delicioso de la ciudad.",
                      style: TextStyle(fontSize: 14, color: Colors.brown[600], height: 1.4),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              const Text(
                "Nuestras Especialidades",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _cuadradoMediano(),
                  _cuadradoMediano(),
                  _cuadradoMediano(),
                ],
              ),
              const SizedBox(height: 25),

              _filaIconoTexto(Icons.star, "Ingredientes Orgánicos", "Usamos la mejor harina."),
              _filaIconoTexto(Icons.timer, "Horneado al Día", "Pan calientito cada mañana."),
              _filaIconoTexto(Icons.delivery_dining, "Servicio a Domicilio", "Llegamos a tu puerta."),
              
              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _tarjetaPan("P. Francesa", "Baguettes y Croissants.", Colors.amber[600]!),
                  _tarjetaPan("P. Mexicana", "Conchas y bolillos.", Colors.amber[700]!),
                  _tarjetaPan("Repostería", "Pasteles especiales.", Colors.amber[800]!),
                ],
              ),

              const SizedBox(height: 35),

              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Pantalla2()),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text("IR AL CATÁLOGO COMPLETO"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[700],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    elevation: 5,
                  ),
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cuadradoImagen(Color color, {String? url, bool esDestacado = false}) {
    return Container(
      width: 80, height: 80,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.brown[200]!, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: url != null 
          ? Image.network(url, fit: BoxFit.cover, errorBuilder: (c, e, s) => const Icon(Icons.broken_image)) 
          : Icon(Icons.image, color: esDestacado ? Colors.white : Colors.brown[300]), 
      ),
    );
  }

  Widget _cuadradoMediano() {
    return Container(
      width: 100, height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown[300]!),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Icon(Icons.bakery_dining_outlined, color: Colors.brown),
    );
  }

  Widget _filaIconoTexto(IconData icono, String titulo, String sub) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.orange[800],
            child: Icon(icono, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(sub, style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }

  Widget _tarjetaPan(String titulo, String desc, Color colorRect) {
    return Container(
      width: 110,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Container(height: 40, width: double.infinity, color: colorRect),
          const SizedBox(height: 5),
          Text(titulo, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
          const Divider(),
          Text(desc, style: const TextStyle(fontSize: 9), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}