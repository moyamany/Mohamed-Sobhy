import 'package:flutter/material.dart';

import 'about_me_description_widget.dart';
import 'my_portofiloe_image.dart';

class AboutMeTabletView extends StatelessWidget {
  const AboutMeTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(child: AboutMeDescriptionWidget()),
          ProfileAnimation(),
        ],
      ),
    );
  }
}
