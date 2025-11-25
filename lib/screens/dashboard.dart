import 'package:flutter/material.dart';
import 'mood_entry.dart';
import 'history.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WellnessFlow'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Bem-vindo ao WellnessFlow',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Registre seu humor, receba uma análise simulada e acompanhe seu histórico emocional.',
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const MoodEntryScreen()),
                );
              },
              icon: const Icon(Icons.mood),
              label: const Text('Registrar Humor'),
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HistoryScreen()),
                );
              },
              icon: const Icon(Icons.history),
              label: const Text('Histórico'),
            ),
          ],
        ),
      ),
    );
  }
}
