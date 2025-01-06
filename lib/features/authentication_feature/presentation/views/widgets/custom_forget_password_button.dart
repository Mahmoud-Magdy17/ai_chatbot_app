import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class CustomForgetPasswordButton extends StatelessWidget {
  const CustomForgetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        gradient: AppColors.linearGradient,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: AppColors.whiteColor,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(
              38,
            ),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 6),
          child: Text(
            AppStrings.forgetPassword,
          ),
        ),
      ),
    );
  }
}
