import 'package:flutter/material.dart';

class SignatureScreen extends StatelessWidget {
  const SignatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1B24),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Firma del Desarrollador',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1F1B24), Color(0xFF121212)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/Yo.jpg'),
            ),
            const SizedBox(height: 20),
            const Text('Christopher Balkaran',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            const SizedBox(height: 6),
            const Text('Estudiante de Ingeniería en Sistemas',
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
            const SizedBox(height: 30),
            const Divider(color: Colors.white54),
            const SizedBox(height: 10),
            const ContactInfoRow(icon: Icons.email,text: 'cbalkaran.1886@unimar.edu.ve',
            ),
            const ContactInfoRow(icon: Icons.phone, text: '+58 412-3526746'),
            const ContactInfoRow(icon: Icons.link, text: 'github.com/CHR-35'),
            const ContactInfoRow(icon: Icons.location_on,text: 'Nueva Esparta, Venezuela',
            ),
          ],
        ),
      ),
    );
  }
}

class ContactInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactInfoRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurpleAccent, size: 28),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
