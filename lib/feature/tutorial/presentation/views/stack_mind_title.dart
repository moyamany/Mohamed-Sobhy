import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_text_styles.dart'
    show AppTextStyles;

import '../../../../core/utils/app_string.dart';

class StackMindTitle extends StatelessWidget {
  const StackMindTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          AppString.stackMind,
          style: AppTextStyles.normalStyle(context, fontSize: 30),
        ),
      ),
    );
  }
}
