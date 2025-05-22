import 'package:flutter/material.dart';

class NavigationItemModel {
  final String label;
  final IconData icon;
  final IconData selectedIcon; 
  final String route;

  NavigationItemModel({
    required this.label,
    required this.icon,
    required this.selectedIcon,
    required this.route,
  });
}