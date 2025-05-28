import 'package:flutter/material.dart';

class DynamicNotchedBarPainter extends CustomPainter {
  final Color color;
  final double notchCenterX; 
  final double notchRadius;
  final double barHeight;
  final double cornerRadius; 
  final double elevation;

  DynamicNotchedBarPainter({
    required this.color,
    required this.notchCenterX,
    required this.notchRadius,
    required this.barHeight,
    required this.cornerRadius,
    this.elevation = 8.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // size adalah ukuran dari CustomPaint (lebar penuh, tinggi barHeight)
    final paint =
        Paint()
          ..color = color
          ..style = PaintingStyle.fill;

    final Path path = Path();
    path.moveTo(0, cornerRadius);
    path.arcToPoint(
      Offset(cornerRadius, 0),
      radius: Radius.circular(cornerRadius),
      clockwise: false,
    );

    // Garis lurus ke awal lekukan (notch)
    path.lineTo(notchCenterX - notchRadius, 0);
    path.arcToPoint(
      Offset(notchCenterX + notchRadius, 0), // Titik akhir lekukan
      radius: Radius.circular(notchRadius),
      clockwise:
          false, 
    );
    path.lineTo(size.width - cornerRadius, 0);

    // Sudut kanan atas
    path.arcToPoint(
      Offset(size.width, cornerRadius),
      radius: Radius.circular(cornerRadius),
      clockwise: false,
    );
    path.lineTo(size.width, barHeight - cornerRadius);
    path.arcToPoint(
      Offset(size.width - cornerRadius, barHeight),
      radius: Radius.circular(cornerRadius),
      clockwise: false,
    );
    path.lineTo(cornerRadius, barHeight);
    path.arcToPoint(
      Offset(0, barHeight - cornerRadius),
      radius: Radius.circular(cornerRadius),
      clockwise: false,
    );
    path.lineTo(0, cornerRadius);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant DynamicNotchedBarPainter oldDelegate) {
    return oldDelegate.notchCenterX != notchCenterX ||
        oldDelegate.color != color ||
        oldDelegate.notchRadius != notchRadius ||
        oldDelegate.barHeight != barHeight ||
        oldDelegate.cornerRadius != cornerRadius;
  }
}
