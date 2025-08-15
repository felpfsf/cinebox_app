import 'package:cinebox_app/presentation/pages/index.dart';
import 'package:cinebox_app/themes/theme.dart';
import 'package:flutter/material.dart';

class CineboxMainApp extends StatelessWidget {
  const CineboxMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinebox',
      theme: AppTheme.theme,
      routes: {
        '/': (_) => const SplashScreen(),
        'home': (context) => const HomeScreen(),
      },
    );
  }
}
