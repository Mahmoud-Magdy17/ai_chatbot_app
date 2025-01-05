import 'package:ai_chatbot_ai/features/splash_feature/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

import 'core/cache/cache_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(const AIChatBot());
}

class AIChatBot extends StatelessWidget {
  const AIChatBot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
