import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/on_boarding2_view_body.dart';

class OnBoarding2View extends StatelessWidget {
  const OnBoarding2View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: OnBoarding2ViewBody(),
    );
  }
}