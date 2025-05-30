import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_text_styles.dart';
import 'package:my_portfolio/feature/contact/presentation/views/social_media_icons.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withAlpha((255 * 0.45).toInt()),
      padding: EdgeInsets.all(30),
      child: Column(
        spacing: 10,
        children: [
          Text(
            "Contact With Me",
            style: AppTextStyles.normalStyle(context, fontSize: 30),
          ),
          Center(child: const SocialMediaIcons()),
        ],
      ),
    );
  }
}
