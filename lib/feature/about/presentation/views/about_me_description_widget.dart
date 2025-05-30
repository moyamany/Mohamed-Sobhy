import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';

class AboutMeDescriptionWidget extends StatelessWidget {
  const AboutMeDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          FadeInUp(
            duration: const Duration(milliseconds: 1200),
            child: Text(
              'Hello, It\'s Me',
              style: AppTextStyles.montserratStyle(
                context,
                color: Colors.white,
              ),
            ),
          ),
          FadeInUp(
            duration: const Duration(milliseconds: 1400),
            child: Text(
              'Mohamed Sobhy',
              style: AppTextStyles.headingStyles(context),
            ),
          ),
          FadeInUp(
            duration: const Duration(milliseconds: 1450),
            child: Row(
              children: [
                AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TyperAnimatedText(
                      'Flutter Developer',
                      textStyle: AppTextStyles.montserratStyle(
                        context,
                        color: Colors.lightBlue,
                        fontSize: 30,
                      ),
                    ),
                    TyperAnimatedText(
                      'Freelancer',
                      textStyle: AppTextStyles.montserratStyle(
                        context,
                        color: Colors.lightBlue,
                        fontSize: 30,
                      ),
                    ),
                    TyperAnimatedText(
                      'YouTuber',
                      textStyle: AppTextStyles.montserratStyle(
                        context,
                        color: Colors.lightBlue,
                        fontSize: 30,
                      ),
                    ),
                  ],
                  pause: const Duration(milliseconds: 1000),
                  stopPauseOnTap: false,
                ),
              ],
            ),
          ),
          FadeInUp(
            duration: const Duration(milliseconds: 1600),
            child: SizedBox(
              child: Text(
                '''
Flutter Developer with 2 years of experience Hands-on experience in developing responsive, scalable, and cross-platform mobile
applications using flutter and dart. Proficient in implementing clean UI, managing state, and integrating RESTful APIs. Demonstrated
ability to deliver functional and visually appealing applications for both Android and iOS platforms.''',
                style: AppTextStyles.normalStyle(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
