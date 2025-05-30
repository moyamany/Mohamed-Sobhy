import 'package:flutter/material.dart';

class MediaIconWidget extends StatelessWidget {
  final String iconAsset;
  final VoidCallback onTap;
  const MediaIconWidget({
    super.key,
    required this.iconAsset,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 45,
        height: 45,
        padding: EdgeInsets.all(5),
        child: Image.asset(iconAsset),
      ),
    );
  }
}
