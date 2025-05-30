import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_text_styles.dart';
import 'package:my_portfolio/core/widgets/social_media_icons.dart';
import 'package:my_portfolio/feature/contact/presentation/views/contact_icon_widget.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withAlpha((255 * 0.45).toInt()),
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 10,
        children: [
          Text(
            "Contact With Me",
            style: AppTextStyles.normalStyle(context, fontSize: 30),
          ),
          Center(
            child: Wrap(
              spacing: 30,
              direction: Axis.horizontal,
              alignment: WrapAlignment.start,
              children: [
                ContactIconWidget(
                  contact: "mohamedyamany055@gmail.com",
                  icon: Icons.email,
                ),
                ContactIconWidget(contact: "01500144220", icon: Icons.phone),
              ],
            ),
          ),

          const SocialMediaIcons(),
        ],
      ),
    );
  }
}
