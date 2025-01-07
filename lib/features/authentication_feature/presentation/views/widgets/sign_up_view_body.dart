import 'package:ai_chatbot_ai/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import 'authentication_view_header.dart';
import 'authintication_wave_painter.dart';
import 'sign_up_view_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: AuthenticationWavePainter(scaler: 1),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 46.0),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: AuthenticationViewHeader(
                  image: AppAssets.botSignUpHead,
                ),
              ),
              Expanded(
                flex: 8,
                child: 
                SignUpViewForm()
              ),
            ],
          ),
        ),
      ),
    );
  }
}
