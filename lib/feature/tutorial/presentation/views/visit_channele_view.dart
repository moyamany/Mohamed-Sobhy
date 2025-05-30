import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class VisitChanneleView extends StatelessWidget {
  const VisitChanneleView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 85,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),

          child: InkWell(
            onTap: () {
              final Uri url = Uri.parse("https://www.youtube.com/@stackMind");
              launchUrl(url);
            },
            child: Text(
              "Visit Stack Mind",
              style: AppTextStyles.normalStyle(context),
            ),
          ),
        ),
      ),
    );
  }
}
