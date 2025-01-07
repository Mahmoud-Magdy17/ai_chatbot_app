import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
  });
  final String hintText;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
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
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.email_outlined),
          iconColor: AppColors.greyColor,
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: AppStyle.popins40014,
        ),
      ),
    );
  }
}
