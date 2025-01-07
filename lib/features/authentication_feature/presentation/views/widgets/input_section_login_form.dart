import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:ai_chatbot_ai/features/authentication_feature/presentation/managers/cubit/login_cubit.dart';
import 'package:ai_chatbot_ai/features/authentication_feature/presentation/views/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        LoginCubit cubit = context.read<LoginCubit>();
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
            CustomTextFormField(
              hintText: AppStrings.emailOrUserName,
              controller: cubit.emailController,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomPasswordField(
              controller: cubit.passwordController,
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomForgetPasswordButton(),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            LoginButton(
              onPressed: () {
                cubit.login(context);
              },
            ),
            const SizedBox(
              height: 16,
            ),
            SignUpButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignUpView();
                    },
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
