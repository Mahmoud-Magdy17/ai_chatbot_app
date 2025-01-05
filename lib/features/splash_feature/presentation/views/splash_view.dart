import 'package:ai_chatbot_ai/core/constants/app_colors.dart';
import 'package:ai_chatbot_ai/features/splash_feature/presentation/views/widgets/splash_view_design_animation.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SplashViewDesingAnimation(),
    );
  }
}