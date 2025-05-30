import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AboutMeProfileImageWidget extends StatelessWidget {
  const AboutMeProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 1200),
      child: Image.asset(
        "assets/my_profile_image-removebg-preview.png",
        height: 450,
        width: 400,
      ),
    );
  }
}
