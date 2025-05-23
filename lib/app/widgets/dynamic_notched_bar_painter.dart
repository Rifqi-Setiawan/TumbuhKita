import 'dart:math' as math;
import 'package:flutter/material.dart';

class DynamicNotchedBarPainter extends CustomPainter {
  final Color color;
  final double notchCenterX; // Posisi X tengah dari lekukan (notch)
  final double notchRadius; // Radius lekukan (setengah dari diameter FAB)
  final double barHeight;
  final double cornerRadius; // Radius untuk sudut-sudut bar
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

    // Menggambar dari kiri ke kanan, atas ke bawah
    // Sudut kiri atas
    path.moveTo(0, cornerRadius);
    path.arcToPoint(
      Offset(cornerRadius, 0),
      radius: Radius.circular(cornerRadius),
      clockwise: false,
    );

    // Garis lurus ke awal lekukan (notch)
    path.lineTo(notchCenterX - notchRadius, 0);

    // Lekukan setengah lingkaran ke atas (mengarah ke dalam bar)
    // Titik kontrol untuk bezier atau langsung arc
    // arcToPoint akan menggambar bagian lingkaran antara titik saat ini dan titik tujuan
    // Kita ingin lekukan "menggali" ke atas.
    path.arcToPoint(
      Offset(notchCenterX + notchRadius, 0), // Titik akhir lekukan
      radius: Radius.circular(notchRadius),
      clockwise:
          false, // false untuk membuat arc cekung ke atas (jika dilihat dari garis lurus)
    );

    // Garis lurus ke sudut kanan atas
    path.lineTo(size.width - cornerRadius, 0);

    // Sudut kanan atas
    path.arcToPoint(
      Offset(size.width, cornerRadius),
      radius: Radius.circular(cornerRadius),
      clockwise: false,
    );

    // Garis lurus ke sudut kanan bawah
    path.lineTo(size.width, barHeight - cornerRadius);

    // Sudut kanan bawah
    path.arcToPoint(
      Offset(size.width - cornerRadius, barHeight),
      radius: Radius.circular(cornerRadius),
      clockwise: false,
    );

    // Garis lurus ke sudut kiri bawah
    path.lineTo(cornerRadius, barHeight);

    // Sudut kiri bawah
    path.arcToPoint(
      Offset(0, barHeight - cornerRadius),
      radius: Radius.circular(cornerRadius),
      clockwise: false,
    );

    // Garis lurus kembali ke awal (sudut kiri atas)
    path.lineTo(0, cornerRadius);
    path.close();

    // Gambar shadow terlebih dahulu
    // canvas.drawShadow(path, Colors.black.withOpacity(0.15), elevation, false);
    // Untuk shadow yang lebih baik dengan CustomPaint, seringkali lebih mudah menggunakan Container dengan BoxDecoration
    // di belakang CustomPaint, atau menggunakan Paint()..maskFilter untuk shadow internal.
    // Untuk kesederhanaan, kita fokus pada bentuknya dulu. Shadow bisa ditambahkan via Container di widget.

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
