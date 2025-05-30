import 'package:flutter/material.dart';

import '../../../home/presentation/widget/about_me_profile_image_widget.dart';
import 'about_me_description_widget.dart';

class AboutMeMobileView extends StatelessWidget {
  const AboutMeMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [AboutMeProfileImageWidget(), AboutMeDescriptionWidget()],
      ),
    );
  }
}
