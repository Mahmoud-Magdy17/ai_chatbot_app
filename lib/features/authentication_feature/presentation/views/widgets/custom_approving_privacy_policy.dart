import 'dart:developer';

import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomApprovingPrivacyPolicy extends StatelessWidget {
  const CustomApprovingPrivacyPolicy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(text: AppStrings.bySigningUpYouAcceptThe),
          TextSpan(
            style: AppStyle.popins60014.copyWith(
              fontSize: 8,
              color: AppColors.greyColor,
              decoration: TextDecoration.underline,
            ),
            text: AppStrings.termOfService,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                log(AppStrings.termOfService);
              },
          ),
          const TextSpan(text: AppStrings.andOur),
          TextSpan(
            text: AppStrings.privacyPolicy,
            style: AppStyle.popins60014.copyWith(
              fontSize: 8,
              color: AppColors.greyColor,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                log(AppStrings.privacyPolicy);
              },
          )
        ],
      ),
      textAlign: TextAlign.center,
      style: AppStyle.popins60014.copyWith(
        fontSize: 8,
        color: AppColors.greyColor,
      ),
    );
  }
}
