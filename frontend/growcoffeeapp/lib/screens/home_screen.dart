import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GrowCoffee - Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Belum ada proyek tanaman'),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/create-project'),
              child: const Text('Buat Proyek'),
            ),
          ],
        ),
      ),
    );
  }
}
