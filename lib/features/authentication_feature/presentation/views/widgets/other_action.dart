
import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OtherAction extends StatelessWidget {
  const OtherAction({
    super.key,
    required this.text1,
    required this.text2,
    required this.onTap,
  });
  final String text1;
  final String text2;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      style: AppStyle.popins60014.copyWith(
        fontSize: 10,
      ),
      TextSpan(
        children: [
          TextSpan(
              text: text1,
              style: AppStyle.popins60014.copyWith(
                fontSize: 10,
                color: AppColors.greyColor,
              )),
          TextSpan(
            text: text2,
            recognizer: TapGestureRecognizer()
              ..onTap = onTap,
          )
        ],
      ),
    );
  }
}
