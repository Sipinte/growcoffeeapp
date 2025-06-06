import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/splash_screen.dart';
import 'screens/intro_screen.dart';
import 'screens/auth/sign_in_screen.dart';
import 'screens/auth/sign_up_screen.dart';
import 'screens/auth/forgot_password_screen.dart';
import 'screens/home_screen.dart';
import 'screens/project/create_project_screen.dart';
import 'screens/project/project_detail_screen.dart';
import 'screens/analytics/graph_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
