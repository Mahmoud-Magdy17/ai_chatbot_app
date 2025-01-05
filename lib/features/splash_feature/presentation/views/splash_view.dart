
import 'package:ai_chatbot_ai/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/splash_view_body.dart';
import 'widgets/wave_painter.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );
    _animationController.forward();
    // Future.delayed(
    //   Duration(seconds: 3),
    //   () {
    //     Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) {
    //           return const OnBoardingView();
    //         },
    //       ),
    //     );
    //   },
    // );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          // log(_animation.value.toString());
          // setState(() {});
          return CustomPaint(
            painter: WavePainter(scaler: _animation.value),
            child: const SplashViewBody(),
          );
        },
      ),
    );
  }
}
