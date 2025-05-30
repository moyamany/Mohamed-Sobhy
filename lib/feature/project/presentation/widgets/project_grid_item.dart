import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_text_styles.dart';
import 'package:my_portfolio/core/utils/image_assets.dart';
import 'package:my_portfolio/feature/project/model/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectGridItem extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectGridItem({super.key, required this.projectModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      color: Colors.white.withAlpha((255 * 0.10).toInt()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            child: Image(image: AssetImage(projectModel.imageCover)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              backgroundColor: Colors.blue[600]?.withAlpha((255 * 0.5).toInt()),
              label: Text(
                projectModel.projectType,
                style: TextStyle(color: Colors.blue[600]!),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              projectModel.title,
              style: AppTextStyles.normalStyle(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              projectModel.description,
              maxLines: 3,
              style: AppTextStyles.normalStyle(context),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () async {
              final Uri url = Uri.parse(projectModel.projectUrl);
              launchUrl(url);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset(AppImageAssets.youTubeIcon),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
