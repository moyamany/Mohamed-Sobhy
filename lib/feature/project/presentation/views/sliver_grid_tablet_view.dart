import 'package:flutter/material.dart';

import '../../model/project_model.dart';
import '../widgets/project_grid_item.dart';

class SliverGridTabletView extends StatelessWidget {
  const SliverGridTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
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

  double calculateAspectRatio(double width) {
    return 0.8;
  }
}
