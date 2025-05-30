import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_string.dart';
import 'package:my_portfolio/feature/home/presentation/widget/custom_text_hover_button.dart';
import 'package:my_portfolio/feature/home/presentation/widget/my_logo_widget.dart';

class HeaderDeskTopView extends StatelessWidget {
  final void Function(int) onTap;
  const HeaderDeskTopView({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      margin: EdgeInsetsDirectional.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        spacing: 10,
        children: [
          MyLogoWidget(onTap: () {}),
          const Spacer(),
          CustomTextHoverButton(
            title: AppString.about,
            onTap: () {
              onTap(0);
            },
          ),
          CustomTextHoverButton(
            title: AppString.skills,
            onTap: () {
              onTap(1);
            },
          ),
          CustomTextHoverButton(
            title: AppString.projects,
            onTap: () {
              onTap(2);
            },
          ),
          CustomTextHoverButton(
            title: AppString.tutorials,
            onTap: () {
              onTap(3);
            },
          ),
          CustomTextHoverButton(
            title: AppString.contact,
            onTap: () {
              onTap(4);
            },
          ),
        ],
      ),
    );
  }
}
