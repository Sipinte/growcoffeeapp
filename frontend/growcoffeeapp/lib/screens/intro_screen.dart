import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0EBCE),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo kecil di kiri atas
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF1F0E9),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo_amel_ui_ux.png',
                      width: 45,
                      height: 45,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
              ],
            ),
            const SizedBox(height: 32),

            // Judul
            const Text(
              'Selamat Datang di Grow Coffee',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Color(0xFF0D4715),
              ),
            ),
            const SizedBox(height: 16),

            // Deskripsi
            const Text(
              'Atur dan kelola kebun kopi Anda dengan lebih mudah!\n'
                  'Tambahkan proyek baru, pantau kondisi cuaca, dan dapatkan\n'
                  'jadwal penyiraman otomatis.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: Color(0xFF0D4715),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 32),

            const Text(
              'Cara Memulai',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFF0D4715),
              ),
            ),
            const SizedBox(height: 12),

            const Text(
              'Klik tombol Tambah Projek untuk menambahkan kebun baru.\n'
                  'Masukkan detail tanaman seperti lokasi, jenis kopi, dan luas lahan.\n'
                  'Jadwal penyiraman akan otomatis dibuat berdasarkan data cuaca.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: Color(0xFF0D4715),
                height: 1.5,
              ),
            ),
            const Spacer(),

            // Tombol Navigasi (bisa diganti dengan tombol masuk juga)
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      'Belum punya akun? Daftar sekarang',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(0xFF0D4715),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF0D4715),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
