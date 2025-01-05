import 'package:ai_chatbot_ai/core/utils/app_assets.dart';
import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/core/utils/app_style.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HelloText extends StatefulWidget {
  const HelloText({
    super.key,
  });

  @override
  State<HelloText> createState() => _HelloTextState();
}

class _HelloTextState extends State<HelloText> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
        const Duration(seconds: 2),
        () {
          return true;
        },
      ),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          AudioPlayer player = AudioPlayer();
          player.play(AssetSource(AppAssets.tune5));

          return Container(
            alignment: Alignment.center,
            child: Text(
              AppStrings.hello,
              style: AppStyle.openningTexts.copyWith(
                fontSize: 48,
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
