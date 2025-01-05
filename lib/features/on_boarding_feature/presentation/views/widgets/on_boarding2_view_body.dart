
import 'package:ai_chatbot_ai/core/utils/app_assets.dart';
import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/wave_painter.dart';
import 'package:flutter/material.dart';

import 'action_section_onboarding.dart';

class OnBoarding2ViewBody extends StatelessWidget {
  const OnBoarding2ViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: WavePainter(scaler: 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 9,
            child: Image.asset(AppAssets.bot2),
          ),
          Expanded(
            flex: 3,
            child: ActionSectionOnboarding(
              text: AppStrings.onBoardingString2,
              nextOnPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
