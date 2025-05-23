import 'package:flutter/material.dart';

class GridItemInfo {
  final String title;
  final String value;
  final String unit;
  final String statusText;
  final IconData iconData;
  final double? iconRotation;
  final Color iconColor;
  final Color backgroundColor;
  final IconData? statusValueIcon;
  final Color? statusValueIconColor;

  const GridItemInfo({
    required this.title,
    required this.value,
    required this.unit,
    required this.statusText,
    required this.iconData,
    this.iconRotation,
    required this.iconColor,
    required this.backgroundColor,
    this.statusValueIcon,
    this.statusValueIconColor,
  });
}