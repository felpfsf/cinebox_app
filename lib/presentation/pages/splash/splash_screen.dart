import 'dart:developer';

import 'package:cinebox_app/presentation/pages/splash/commands/check_user_logged_command.dart';
import 'package:cinebox_app/presentation/pages/splash/viewmodel/splash_screen_viewmodel.dart';
import 'package:cinebox_app/presentation/widgets/loader_messages.dart';
import 'package:cinebox_app/themes/app_colors.dart';
import 'package:cinebox_app/themes/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> with LoaderAndMessages {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(splashScreenViewmodelProvider).checkLoginAndRedirect();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(checkUserLoggedCommandProvider, (_, next) {
      next.whenOrNull(
        data: (data) {
          final path = switch (data) {
            true => '/home',
            false => '/login',
            _ => '',
          };

          if (path.isNotEmpty && context.mounted) {
            Navigator.of(context).pushNamedAndRemoveUntil(path, (route) => false);
          }
        },
        error: (error, stackTrace) {
          if (context.mounted) {
            showErrorSnackBar('Erro ao verificar login');
            log('Erro ao verificar login', error: error, stackTrace: stackTrace);
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/login',
              (route) => false,
            );
          }
        },
      );
    });
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(R.ASSETS_IMAGES_BG_LOGIN_PNG, fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: 0.7,
              child: Container(color: AppColors.black),
            ),
          ),
          Center(
            child: Image.asset(R.ASSETS_IMAGES_LOGO_PNG, width: 200),
          ),
        ],
      ),
    );
  }
}
