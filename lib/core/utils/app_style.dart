import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle openningTexts = const TextStyle(
    fontSize: 26,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
  );

  static TextStyle popins70020 = const TextStyle(
    fontFamily: "popins",
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );
  static TextStyle popins60014 = const TextStyle(
    fontFamily: "popins",
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );
  static TextStyle popins40014 = const TextStyle(
    fontFamily: "popins",
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.greyColor,
  );
}
