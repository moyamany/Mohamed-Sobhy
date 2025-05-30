import 'package:flutter/material.dart';

import 'about_me_description_widget.dart';
import 'my_portofiloe_image.dart';

class AboutMeDesktopView extends StatelessWidget {
  const AboutMeDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.05,
      ),
      child: Row(
        children: [
          Expanded(child: AboutMeDescriptionWidget()),
          const SizedBox(height: 25),
          ProfileAnimation(),
        ],
      ),
    );
  }
}
