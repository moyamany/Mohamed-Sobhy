import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/image_assets.dart';
import 'package:my_portfolio/feature/contact/presentation/widgets/media_icon_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: [
        MediaIconWidget(
          iconAsset: AppImageAssets.emailIcon,
          onTap: () {
            final Uri emailLaunchUri = Uri(
              scheme: 'mailto',
              path: 'mohamedyamany055@gmail.com',
              // queryParameters: {'subject': 'Hello Mohamed Sobhy'},
            );
            launchUrl(emailLaunchUri);
          },
        ),
        MediaIconWidget(
          iconAsset: AppImageAssets.phoneIcon,
          onTap: () {
            final Uri launchUri = Uri(scheme: 'tel', path: "01500144220");
            launchUrl(launchUri);
          },
        ),
        MediaIconWidget(
          iconAsset: AppImageAssets.githupIcon,
          onTap: () {
            final Uri launchUri = Uri.parse("https://github.com/MohmaedSobhy");
            launchUrl(launchUri);
          },
        ),
        MediaIconWidget(
          iconAsset: AppImageAssets.youTubeIcon,
          onTap: () {
            final Uri launchUri = Uri.parse(
              "https://www.youtube.com/@mohamedsobhy6441",
            );
            launchUrl(launchUri);
          },
        ),
        MediaIconWidget(
          iconAsset: AppImageAssets.linkedInIcon,
          onTap: () {
            final Uri launchUri = Uri.parse(
              "https://www.linkedin.com/in/mohamed-sobhy-8137131bb/",
            );
            launchUrl(launchUri);
          },
        ),
      ],
    );
  }
}
