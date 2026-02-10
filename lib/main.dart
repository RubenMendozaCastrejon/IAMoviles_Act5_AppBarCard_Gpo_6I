import 'package:flutter/material.dart';

void main() => runApp(AppInvestech());

class AppInvestech extends StatelessWidget {
  const AppInvestech({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Investech",
      home: Usuario(),
    );
  }
} // Fin clase AppInvestech

class Usuario extends StatelessWidget {
  const Usuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Investech - Mendoza Ruben"),
        backgroundColor: Colors.grey,
          actions: [
            Icon(Icons.bedroom_child),
            Icon(Icons.flight)
          ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tarjeta con degradado guinda
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFF800020), // Guinda (Burgundy)
                    Color(0xFF4A0012), // Guinda oscuro
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/RubenMendozaCastrejon/IAMoviles_Act5_AppBarCard_Gpo_6I/refs/heads/main/Usuario.jpg',
                    ),
                  ),
                  title: Text(
                    'Mendoza Rubén',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    'Gerente de Transacciones',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
} // Fin clase Usuario