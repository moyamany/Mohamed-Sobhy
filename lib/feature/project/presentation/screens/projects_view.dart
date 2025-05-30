import 'package:flutter/material.dart';
import 'package:my_portfolio/core/helper/app_responsive.dart';
import 'package:my_portfolio/feature/project/presentation/views/sliver_grid_desktop_view.dart';
import 'package:my_portfolio/feature/project/presentation/views/sliver_grid_mobile_view.dart';
import 'package:my_portfolio/feature/project/presentation/views/sliver_grid_tablet_view.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      sliver:
          (AppResponsive.isDesktop(context))
              ? SliverGridDesktopView()
              : (AppResponsive.isTablet(context))
              ? SliverGridTabletView()
              : SliverGridMobileView(),
    );
  }
}
