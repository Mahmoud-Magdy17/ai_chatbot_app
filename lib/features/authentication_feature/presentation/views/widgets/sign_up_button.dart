import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key, required this.onPressed,
  });
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(4),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // gradient: AppColors.linearGradient,
        color: AppColors.magentaColor,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(18)),
          minimumSize: const Size.fromHeight(56),
          backgroundColor: AppColors.whiteColor,
        ),
        child: Text(
          AppStrings.signUp,
          style: AppStyle.popins70020.copyWith(
            fontSize: 16,
            color: AppColors.magentaColor,
          ),
        ),
      ),
    );
  }
}
