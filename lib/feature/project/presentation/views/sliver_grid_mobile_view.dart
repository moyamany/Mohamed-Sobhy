import 'package:flutter/material.dart';

import '../../model/project_model.dart';
import '../widgets/project_grid_item.dart';

class SliverGridMobileView extends StatelessWidget {
  const SliverGridMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 12.0, // vertical space between items
        crossAxisSpacing: 12.0, // horizontal space between items
        childAspectRatio: 0.85,
      ),
      itemCount: ProjectModel.getProjects().length,
      itemBuilder: (context, index) {
        return ProjectGridItem(projectModel: ProjectModel.getProjects()[index]);
      },
    );
  }
}
