import 'package:flutter/material.dart';

class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({super.key});

  final List<Hobby> hobbies = const [
    Hobby(
      name: 'Programación',
      icon: Icons.code,
      description: 'Me encanta resolver problemas y me parece divertido crear aplicaciones.',
    ),
    Hobby(
      name: 'Ejercicio',
      icon: Icons.fitness_center,
      description: 'Disfruto hacer ejercicios para mantenerme en forma.',
    ),
    Hobby(
      name: 'Leer',
      icon: Icons.book,
      description:
          'Historias de ciencia ficción y desarrollo personal.',
    ),
    Hobby(
      name: 'Viajar',
      icon: Icons.flight,
      description: 'Conocer nuevos lugares y culturas.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('Mis Hobbies',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1F1B24),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1F1B24), Color(0xFF121212)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemCount: hobbies.length,
          separatorBuilder: (_, __) => const SizedBox(height: 15),
          itemBuilder: (context, index) {
            final hobby = hobbies[index];
            return Card(
              elevation: 6,
              color: const Color(0xFF1E1E1E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Icon(
                  hobby.icon,
                  color: Colors.deepPurpleAccent,
                  size: 36,
                ),
                title: Text(
                  hobby.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  hobby.description,
                  style: const TextStyle(fontSize: 14, color: Colors.white70),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Hobby {
  final String name;
  final IconData icon;
  final String description;

  const Hobby({
    required this.name,
    required this.icon,
    required this.description,
  });
}
