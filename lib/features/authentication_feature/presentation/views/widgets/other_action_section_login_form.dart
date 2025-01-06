import 'dart:developer';

import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'custom_approving_privacy_policy.dart';
import 'other_login_method.dart';

class OtherActionsSectionLoginForm extends StatelessWidget {
  const OtherActionsSectionLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OtherLoginMethods(),
        const SizedBox(
          height: 12,
        ),
        const CustomApprovingPrivacyPolicy(),
        Text.rich(
          style: AppStyle.popins60014.copyWith(
            fontSize: 10,
          ),
          TextSpan(
            children: [
              TextSpan(
                  text: AppStrings.alreadyRegisterd,
                  style: AppStyle.popins60014.copyWith(
                    fontSize: 10,
                    color: AppColors.greyColor,
                  )),
              TextSpan(
                text: AppStrings.login,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    log(AppStrings.login);
                  },
              )
            ],
          ),
        ),
      ],
    );
  }
}
