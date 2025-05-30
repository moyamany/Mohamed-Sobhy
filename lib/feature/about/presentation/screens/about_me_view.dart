import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/about/presentation/views/about_me_desktop_view.dart';
import 'package:my_portfolio/feature/about/presentation/views/about_me_mobile_view.dart';
import 'package:my_portfolio/feature/about/presentation/views/about_me_tablet_view.dart';
import 'package:my_portfolio/core/widgets/adaptive_layout.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileApp: (context) {
        return AboutMeMobileView();
      },
      tabletApp: (context) {
        return AboutMeTabletView();
      },
      deskTopView: (context) {
        return AboutMeDesktopView();
      },
    );
  }
}
