import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key});

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isEdited = false;
  TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          border: Border.all(
              color: isEdited ? AppColors.blackColor : Colors.transparent),
          color: isEdited ? Colors.transparent : AppColors.backGroundColor,
          borderRadius: BorderRadius.circular(16)),
      child: TextFormField(
        controller: controller,
        onChanged: (value) {
          setState(() {
            isEdited = true;
          });
        },
        obscureText: true,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.email_outlined),
          iconColor: AppColors.greyColor,
          border: InputBorder.none,
          hintText: AppStrings.password,
          hintStyle: AppStyle.popins40014,
        ),
      ),
    );
  }
}
