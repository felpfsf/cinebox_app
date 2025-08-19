import 'package:cinebox_app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

mixin LoaderAndMessages<T extends ConsumerStatefulWidget> on ConsumerState<T> {
  bool isOpen = false;

  void showLoader() {
    if (!isOpen) {
      isOpen = true;
      showDialog(
        context: context,
        builder: (_) {
          return LoadingAnimationWidget.threeRotatingDots(
            color: AppColors.white,
            size: 60.0,
          );
        },
      );
    }
  }

  void hideLoader() {
    if (isOpen) {
      isOpen = false;
      Navigator.of(context).pop();
    }
  }

  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }

  void showErrorSnackBar(String message) => _showSnackBar(message, AppColors.redColor);

  void showSuccessSnackBar(String message) => _showSnackBar(message, AppColors.greenColor);

  void showInfoSnackBar(String message) => _showSnackBar(message, AppColors.blueColor);
}
