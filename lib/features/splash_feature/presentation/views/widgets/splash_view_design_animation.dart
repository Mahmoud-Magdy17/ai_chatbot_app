import 'package:ai_chatbot_ai/features/on_boarding_feature/presentation/views/on_boarding1_view.dart';
import 'package:flutter/material.dart';

import 'splash_view_body.dart';
import '../../../../../core/utils/wave_painter.dart';

class SplashViewDesingAnimation extends StatefulWidget {
  const SplashViewDesingAnimation({super.key});

  @override
  State<SplashViewDesingAnimation> createState() =>
      _SplashViewDesingAnimationState();
}

class _SplashViewDesingAnimationState extends State<SplashViewDesingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _shapeAnimationController;
  late Animation<double> _shapeAnimation;
  @override
  void initState() {
    super.initState();
    _shapeAnimationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _shapeAnimation = CurvedAnimation(
      parent: _shapeAnimationController,
      curve: Curves.easeIn,
    );
    _shapeAnimationController.forward();
    Future.delayed(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const OnBoarding1View();
            },
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _shapeAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _shapeAnimation,
      builder: (context, child) {
        return CustomPaint(
          painter: WavePainter(
              scaler: _shapeAnimation.value, repaint: _shapeAnimation),
          child: const SplashViewBody(),
        );
      },
    );
  }
}
