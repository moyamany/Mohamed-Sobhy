import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart' show AppColors;

class CustomeTextListTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomeTextListTile({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: AppColors.whitePrimay,
        ),
      ),
    );
  }
}
