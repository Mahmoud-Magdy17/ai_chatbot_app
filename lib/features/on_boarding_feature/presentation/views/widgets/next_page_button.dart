
import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class NextPageButton extends StatelessWidget {
  const NextPageButton({
    super.key,
    required this.nextOnPressed,
  });

  final void Function() nextOnPressed;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.whiteColor,
      radius: 28,
      child: InkWell(
        onTap: nextOnPressed,
        child: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 28,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
