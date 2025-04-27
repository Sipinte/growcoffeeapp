import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/intro_screen.dart'; // Pastikan path sesuai
import 'screens/auth/sign_in_screen.dart'; // Pastikan path sesuai
import 'screens/auth/sign_up_screen.dart'; // Pastikan path sesuai
import 'screens/auth/forgot_password_screen.dart'; // Pastikan path sesuai
import 'screens/home_screen.dart'; // Pastikan path sesuai
import 'screens/project/create_project_screen.dart'; // Pastikan path sesuai
import 'screens/project/project_detail_screen.dart'; // Pastikan path sesuai
import 'screens/analytics/graph_screen.dart'; // Pastikan path sesuai

void main() {
  runApp(const GrowCoffeeApp());
}

class GrowCoffeeApp extends StatelessWidget {
  const GrowCoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GrowCoffee App',
      theme: ThemeData(
        primaryColor: const Color(0xFF0D4715),
        scaffoldBackgroundColor: const Color(0xFFF0EBCE),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0D4715),
          secondary: const Color(0xFFF0EBCE),
        ),
        textTheme: ThemeData.light().textTheme.apply(
          bodyColor: const Color(0xFF0D4715),
          displayColor: const Color(0xFF0D4715),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0D4715),
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0D4715),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/intro': (context) => const IntroScreen(),
        '/signin': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/home': (context) => const HomeScreen(),
        '/create-project': (context) => const CreateProjectScreen(),
        '/project-detail': (context) => const ProjectDetailScreen(),
        '/graph': (context) => const GraphScreen(),
      },
    );
  }
}
