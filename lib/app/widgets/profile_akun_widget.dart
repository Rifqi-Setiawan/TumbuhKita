import 'package:flutter/material.dart';

class ProfileAkunWidget extends StatelessWidget {
  final String label;
  final String photoPath;
  final VoidCallback? onCameraTap;

  const ProfileAkunWidget({
    super.key,
    required this.label,
    required this.photoPath,
    this.onCameraTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 54,
              backgroundColor: Colors.grey.shade300,
              backgroundImage: AssetImage(photoPath),
            ),
            Positioned(
              bottom: 0,
              right: 4,
              child: GestureDetector(
                onTap: onCameraTap,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    color: Color(0xFF7158B3),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}