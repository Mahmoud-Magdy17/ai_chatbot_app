import 'dart:developer';

import 'package:ai_chatbot_ai/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AuthinticationWavePainter extends CustomPainter {
  final double scaler;

  AuthinticationWavePainter({required this.scaler, Listenable? repaint});
  @override
  void paint(Canvas canvas, Size size) {
    log(scaler.toString());
    Paint paint = Paint()
      ..color = AppColors.backGroundColor
      ..style = PaintingStyle.fill;
    final path = Path()
      ..moveTo(0, size.height * 0.25)
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.15,
          size.width * 0.5, size.height * 0.20)
      ..quadraticBezierTo(
          size.width * 0.75, size.height * 0.15, size.width, size.height * 0.25)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant AuthinticationWavePainter oldDelegate) {
    return oldDelegate.scaler != scaler;
  }
}
