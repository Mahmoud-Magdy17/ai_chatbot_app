import 'dart:developer';

import 'package:ai_chatbot_ai/core/cache/cache_helper.dart';
import 'package:ai_chatbot_ai/core/cache/constants.dart';
import 'package:ai_chatbot_ai/features/authentication_feature/presentation/views/login_view.dart';
import 'package:ai_chatbot_ai/features/on_boarding_feature/presentation/views/on_boarding1_view.dart';
import 'package:ai_chatbot_ai/features/splash_feature/data/repos/navigate_from_splash/navigate_from_splash_repo.dart';
import 'package:flutter/material.dart';

class NavigateFromSplashImpl implements NavigateFromSplashRepo {
  @override
  void navigateFromSplashRepo({required BuildContext context}) {
    bool? isNotFirst =
        CacheHelper().getData(key: CasheConstants.isNotFirstOpen);
    log(isNotFirst.toString());
    if (isNotFirst == null || isNotFirst == false) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const OnBoarding1View();
          },
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const LoginView();
          },
        ),
      );
    }
  }
}
