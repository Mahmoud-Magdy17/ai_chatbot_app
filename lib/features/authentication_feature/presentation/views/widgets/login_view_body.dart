import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:ai_chatbot_ai/features/authentication_feature/presentation/views/widgets/custom_password_field.dart';
import 'package:flutter/material.dart';

import 'authintication_wave_painter.dart';
import 'custom_email_and_user_name_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: AuthinticationWavePainter(scaler: 1),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 46),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Column(children: [
                  Spacer(),
                  SizedBox(
                    height: 180,
                    child: Image.asset(
                      fit: BoxFit.contain,
                      'assets/images/bot_head.png',
                    ),
                  ),
                ]),
              ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        AppStrings.login,
                        style: AppStyle.popins70020,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        AppStrings.welcomeBack,
                        style: AppStyle.popins60014,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      const CustomEmailAndUserNameField(),
                      SizedBox(
                        height: 24,
                      ),
                      const CustomPasswordField(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
