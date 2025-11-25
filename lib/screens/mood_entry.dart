import 'package:flutter/material.dart';

class MoodEntryScreen extends StatefulWidget {
  const MoodEntryScreen({super.key});

  @override
  State<MoodEntryScreen> createState() => _MoodEntryScreenState();
}

class _MoodEntryScreenState extends State<MoodEntryScreen> {
  String result = '';
  final TextEditingController _ctrl = TextEditingController();

  Future<String> _mockAnalyze(String text) async {
    await Future.delayed(const Duration(milliseconds: 400));
    final lower = text.toLowerCase();
    if (lower.contains('triste') || lower.contains('ansioso')) return 'Triste/Ansioso';
    if (lower.contains('feliz') || lower.contains('bem')) return 'Feliz/Calmo';
    return 'Neutro';
  }

  void _submit() async {
    final mood = await _mockAnalyze(_ctrl.text);
    setState(() => result = 'Humor detectado: $mood');
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrar Humor')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Descreva como você está se sentindo hoje:',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _ctrl,
              maxLines: 3,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ex.: Estou um pouco ansioso, mas animado com o trabalho...',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submit,
              child: const Text('Analisar humor'),
            ),
            const SizedBox(height: 16),
            Text(
              result,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
