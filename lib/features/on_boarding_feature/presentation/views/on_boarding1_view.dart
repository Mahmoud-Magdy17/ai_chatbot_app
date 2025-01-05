import 'package:ai_chatbot_ai/core/utils/app_assets.dart';
import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import 'on_boarding2_view.dart';
import 'widgets/on_boarding_view_body.dart';

class OnBoarding1View extends StatelessWidget {
  const OnBoarding1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: OnBoardingViewBody(
        text: AppStrings.onBoardingString1,
        imagePath: AppAssets.bot1,
        nextOnPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const OnBoarding2View();
              },
            ),
          );
        },
      ),
    );
  }
}
