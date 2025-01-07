import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'custom_email_and_user_name_field.dart';
import 'custom_password_field.dart';
import 'sign_up_button.dart';

class InputSectionSignUpForm extends StatelessWidget {
  const InputSectionSignUpForm({
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
          AppStrings.createYourAccount,
          style: AppStyle.popins70020,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          AppStrings.signUpToGetStarted,
          style: AppStyle.popins60014,
        ),
        const SizedBox(
          height: 24,
        ),
        CustomTextFormField(
          hintText: AppStrings.fullName,
          controller: TextEditingController(),
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextFormField(
          hintText: AppStrings.email,
          controller: TextEditingController(),
        ),
        const SizedBox(
          height: 16,
        ),
        CustomPasswordField(
          controller: TextEditingController(),
        ),
        const SizedBox(
          height: 40,
        ),
        SignUpButton(
          onPressed: () {},
        ),
      ],
    );
  }
}
