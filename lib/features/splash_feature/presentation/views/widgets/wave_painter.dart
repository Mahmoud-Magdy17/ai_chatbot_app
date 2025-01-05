import 'dart:developer';

import 'package:ai_chatbot_ai/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class WavePainter extends CustomPainter {
  final double scaler;

  WavePainter({super.repaint, required this.scaler});
  // WavePainter({required this.scaler});
  @override
  void paint(Canvas canvas, Size size) {
    log(scaler.toString());
    Paint paint = Paint()
      ..color = AppColors.backGroundColor
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.lineTo(0, size.height * (1 - (0.25 * scaler)));
    path.quadraticBezierTo(
      size.width / 2,
      size.height * (1 - (0.40 * scaler)), //0.60
      size.width,
      size.height * (1 - (0.25 * scaler)), // 0.75
    );
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
