import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/utils/app_string.dart';

class StackMindDescription extends StatelessWidget {
  const StackMindDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.65,
          child: Text(
            AppString.stackMindDescription,
            textAlign: TextAlign.center,
            style: AppTextStyles.normalStyle(context, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
