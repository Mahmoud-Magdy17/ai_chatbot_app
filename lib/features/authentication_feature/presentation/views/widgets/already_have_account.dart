import 'dart:developer';

import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
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
    );
  }
}
