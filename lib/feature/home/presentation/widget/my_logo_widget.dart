import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/app_string.dart';

class MyLogoWidget extends StatelessWidget {
  final VoidCallback onTap;
  const MyLogoWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        AppString.msLogo,
        textScaler: TextScaler.linear(1),
        style: TextStyle(color: Colors.blue, fontSize: 30),
      ),
    );
  }
}
