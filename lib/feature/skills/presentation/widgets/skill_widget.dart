import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  final String title;
  final String imagePath;
  const SkillWidget({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Chip(
        padding: EdgeInsets.all(10),
        backgroundColor: Colors.blue[600]?.withAlpha((255 * 0.5).toInt()),
        label: Text(title, style: TextStyle(color: Colors.white)),
        avatar: Image.asset(imagePath),
      ),
    );
  }
}
