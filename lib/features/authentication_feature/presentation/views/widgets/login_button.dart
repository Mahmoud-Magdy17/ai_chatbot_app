
import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: AppColors.linearGradient,
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          minimumSize: const Size.fromHeight(56),
          backgroundColor: Colors.transparent,
        ),
        child: Text(
          AppStrings.login,
          style: AppStyle.popins70020.copyWith(
            fontSize: 16,
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
