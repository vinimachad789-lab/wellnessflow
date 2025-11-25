import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'date': '2025-11-23', 'mood': 'Ansioso'},
      {'date': '2025-11-22', 'mood': 'Feliz'},
      {'date': '2025-11-21', 'mood': 'Neutro'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Histórico de Humor')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (_, i) {
          final it = items[i];
          return ListTile(
            leading: const Icon(Icons.calendar_month),
            title: Text('${it['date']}'),
            subtitle: Text('Humor: ${it['mood']}'),
          );
        },
      ),
    );
  }
}
