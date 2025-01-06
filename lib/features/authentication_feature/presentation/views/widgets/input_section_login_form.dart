

import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'custom_email_and_user_name_field.dart';
import 'custom_forget_password_button.dart';
import 'custom_password_field.dart';
import 'login_button.dart';
import 'sign_up_button.dart';

class InputSectionLoginForm extends StatelessWidget {
  const InputSectionLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        Text(
          AppStrings.login,
          style: AppStyle.popins70020,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          AppStrings.welcomeBack,
          style: AppStyle.popins60014,
        ),
        const SizedBox(
          height: 24,
        ),
        const CustomEmailAndUserNameField(),
        const SizedBox(
          height: 24,
        ),
        const CustomPasswordField(),
        const SizedBox(
          height: 32,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomForgetPasswordButton(),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        const LoginButton(),
        const SizedBox(
          height: 16,
        ),
        const SignUpButton(),
      ],
    );
  }
}
