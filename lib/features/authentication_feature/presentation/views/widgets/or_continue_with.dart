import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class OrContinueWith extends StatelessWidget {
  const OrContinueWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 96,
          height: 1,
          color: AppColors.greyColor,
        ),
        const Spacer(),
        Text(
          AppStrings.orContinueWith,
          style: AppStyle.popins60014.copyWith(
            fontSize: 10,
            color: AppColors.greyColor,
          ),
        ),
        const Spacer(),
        Container(
          width: 96,
          height: 1,
          color: Colors.black,
        ),
      ],
    );
  }
}
