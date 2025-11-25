import 'package:flutter/material.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(const WellnessFlowApp());
}

class WellnessFlowApp extends StatelessWidget {
  const WellnessFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WellnessFlow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
    );
  }
}
