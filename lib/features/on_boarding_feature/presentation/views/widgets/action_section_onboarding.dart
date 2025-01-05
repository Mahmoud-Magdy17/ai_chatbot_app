import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'next_page_button.dart';

class ActionSectionOnboarding extends StatelessWidget {
  const ActionSectionOnboarding({
    super.key,
    required this.text,
    required this.nextOnPressed,
  });
  final String text;
  final void Function() nextOnPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: AppStyle.openningTexts,
          ),
          const SizedBox(
            height: 12,
          ),
          NextPageButton(nextOnPressed: nextOnPressed)
        ],
      ),
    );
  }
}
