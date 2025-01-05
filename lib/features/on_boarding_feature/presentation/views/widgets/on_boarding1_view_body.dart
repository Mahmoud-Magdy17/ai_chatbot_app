import 'package:ai_chatbot_ai/core/utils/app_assets.dart';
import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/wave_painter.dart';
import 'package:ai_chatbot_ai/features/on_boarding_feature/presentation/views/on_boarding2_view.dart';
import 'package:flutter/material.dart';

import 'action_section_onboarding.dart';

class OnBoarding1ViewBody extends StatelessWidget {
  const OnBoarding1ViewBody({
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
            child: Image.asset(AppAssets.bot1),
          ),
          Expanded(
            flex: 3,
            child: ActionSectionOnboarding(
              text: AppStrings.onBoardingString1,
              nextOnPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const OnBoarding2View();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}
