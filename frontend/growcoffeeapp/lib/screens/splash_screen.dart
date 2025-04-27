import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigasi otomatis ke halaman Sign In setelah 5 detik
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/intro');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0EBCE), // Warna latar belakang
      body: Stack(
        children: [
          // Lingkaran dengan logo di tengah atas
          Positioned(
            left: 143,
            top: 186,
            child: Container(
              width: 113,
              height: 113,
              decoration: BoxDecoration(
                color: const Color(0xFFF1F0E9),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/logo_amel_ui_ux.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          // Teks "GrowCoffee." di bawah logo
          Positioned(
            left: 129,
            top: 310,
            child: Text(
              'GrowCoffee.',
              style: TextStyle(
                fontFamily: 'Calistoga',
                color: const Color(0xFF0D4715),
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),

          // Circular Progress Indicator
          Positioned(
            left: 182,
            top: 370,
            child: const CircularProgressIndicator(
              color: Color(0xFF0D4715),
            ),
          ),

          // Tagline
          Positioned(
            left: 62,
            top: 600,
            child: Text(
              'Penyiraman Cerdas, Kopi Berkualitas',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: const Color(0xFF0D4715),
                fontSize: 15,
                fontWeight: FontWeight.normal,
                letterSpacing: 1.2,
              ),
            ),
          ),

          // Credit Text di paling bawah
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                '© GrowCoffee 2024',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: const Color(0xFF0D4715),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
