import 'dart:developer';

import 'package:ai_chatbot_ai/features/authentication_feature/data/repos/login_repo/login_repo.dart';
import 'package:ai_chatbot_ai/features/home_feature/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class LoginRepoImpl implements LoginRepo {
  @override
  void loginRepo({
    required String email,
    required String password,
    required BuildContext context,
  }) {
    log(email);
    log(password);
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return const HomeView();
      },
    ));
  }
}
