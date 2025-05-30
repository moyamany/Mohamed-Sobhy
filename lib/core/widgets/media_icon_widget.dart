import 'package:flutter/material.dart';

class MediaIconWidget extends StatelessWidget {
  const MediaIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withAlpha((255 * 0.2).toInt()),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(8),
      child: Icon(Icons.email),
    );
  }
}
