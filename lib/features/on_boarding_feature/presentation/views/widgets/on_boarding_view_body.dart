import 'package:ai_chatbot_ai/core/utils/wave_painter.dart';
import 'package:flutter/material.dart';

import 'action_section_onboarding.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({
    super.key,
    required this.text,
    required this.imagePath,
    required this.nextOnPressed,
  });
  final String text;
  final String imagePath;
  final void Function() nextOnPressed;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WavePainter(scaler: 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 9,
            child: Image.asset(imagePath),
          ),
          Expanded(
            flex: 3,
            child: ActionSectionOnboarding(
              text: text,
              nextOnPressed: nextOnPressed,
            ),
          ),
        ],
      ),
    );
  }
}
