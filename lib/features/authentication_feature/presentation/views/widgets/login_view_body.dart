import 'package:ai_chatbot_ai/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import 'authintication_wave_painter.dart';
import 'login_view_form.dart';
import 'authentication_view_header.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: AuthenticationWavePainter(scaler: 1),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 46),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: AuthenticationViewHeader(
                  image: AppAssets.botLoginHead,
                ),
              ),
              Expanded(
                flex: 8,
                child: LoginViewForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
