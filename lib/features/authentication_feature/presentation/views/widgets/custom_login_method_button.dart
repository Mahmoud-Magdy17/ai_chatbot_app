import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomLoginMethodButton extends StatelessWidget {
  const CustomLoginMethodButton({
    super.key,
    required this.onTap,
    required this.icon,
  });
  final IconData icon;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        icon,
        color: AppColors.greyColor,
        size: 42,
      ),
    );
  }
}
