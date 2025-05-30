import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/project/model/project_model.dart';

import '../widgets/project_grid_item.dart';

class SliverGridDesktopView extends StatelessWidget {
  const SliverGridDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: getAxisCount(MediaQuery.sizeOf(context).width),
        mainAxisSpacing: 12.0, // vertical space between items
        crossAxisSpacing: 12.0,
        childAspectRatio: calculateAspectRatio(
          MediaQuery.sizeOf(context).width,
        ),
      ),
      itemCount: ProjectModel.getProjects().length,
      itemBuilder: (context, index) {
        return ProjectGridItem(projectModel: ProjectModel.getProjects()[index]);
      },
    );
  }

  int getAxisCount(double width) {
    if (width >= 1400) {
      return 4;
    }
    return 3;
  }

  double calculateAspectRatio(double width) {
    log("the width is ${width}");
    if (width >= 1200) {
      return 0.90;
    } else if (width > 1000) {
      return 0.65;
    }
    return 0.55;
  }
}
