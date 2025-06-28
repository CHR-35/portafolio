import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), 
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1B24), 
        title: const Text(
          'Mi Portafolio',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_note, color: Colors.white),
            onPressed: () => Navigator.pushNamed(context, 'signature'),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/Yo.jpg'),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Christopher Balkaran',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Ingeniero en Sistemas',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Card(
            color: const Color(0xFF1E1E1E),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.person, color: Colors.deepPurpleAccent),
              title: const Text(
                '¿Quién soy?',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white70,
              ),
              onTap: () => Navigator.pushNamed(context, 'about'),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            color: const Color(0xFF1E1E1E),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.star, color: Colors.deepPurpleAccent),
              title: const Text(
                'Mis Hobbies',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white70,
              ),
              onTap: () => Navigator.pushNamed(context, 'hobbies'),
            ),
          ),
          const SizedBox(height: 30),
          const Center(
            child: Text(
              '© 2025 CHR-35 - Todos los derechos reservados',
              style: TextStyle(fontSize: 14, color: Colors.white60),
            ),
          ),
        ],
      ),
    );
  }
}
