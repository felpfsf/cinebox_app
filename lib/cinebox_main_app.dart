import 'package:cinebox_app/presentation/pages/index.dart';
import 'package:flutter/material.dart';

class CineboxMainApp extends StatelessWidget {
  const CineboxMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinebox',
      routes: {
        '/': (_) => const SplashScreen(),
        'home': (context) => const HomeScreen(),
      },
    );
  }
}
