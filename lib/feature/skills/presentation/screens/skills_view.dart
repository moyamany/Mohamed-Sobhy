import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_text_styles.dart';
import 'package:my_portfolio/core/utils/app_string.dart';
import 'package:my_portfolio/feature/skills/data/model/skill_model.dart';
import 'package:my_portfolio/feature/skills/presentation/widgets/skill_widget.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Text(
                  AppString.skills,
                  style: AppTextStyles.normalStyle(context, fontSize: 30),
                ),
                const SizedBox(height: 12),
                Text(
                  "A passionate developer with hands-on experience in multiple programming languages and frameworks. Skilled in building scalable and efficient applications using modern technologies.",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.headerTextStyle(context),
                ),
                Wrap(
                  spacing: 5,
                  alignment: WrapAlignment.center,
                  children: List.generate(SkillModel.skills.length, (index) {
                    return SkillWidget(
                      title: SkillModel.skills[index].title,
                      imagePath: SkillModel.skills[index].imagePath,
                    );
                  }),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
