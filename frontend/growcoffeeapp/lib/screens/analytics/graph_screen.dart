import 'package:flutter/material.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grafik Penyiraman & Cuaca')),
      body: const Center(
        child: Text('Grafik hujan, penyiraman, dan kesesuaian waktu'),
      ),
    );
  }
}
