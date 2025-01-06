import 'package:ai_chatbot_ai/core/cache/cache_helper.dart';
import 'package:ai_chatbot_ai/core/cache/constants.dart';
import 'package:ai_chatbot_ai/core/utils/app_assets.dart';
import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/features/authentication_feature/presentation/views/login_view.dart';
import 'package:flutter/material.dart';

import 'widgets/on_boarding_view_body.dart';

class OnBoarding2View extends StatelessWidget {
  const OnBoarding2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: OnBoardingViewBody(
        imagePath: AppAssets.bot2,
        text: AppStrings.onBoardingString2,
        nextOnPressed: () {
          Navigator.pop(context);
          Navigator.pop(context);
          CacheHelper().saveData(
            key: CasheConstants.isNotFirstOpen,
            value: true,
          );

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const LoginView();
              },
            ),
          );
        },
      ),
    );
  }
}
