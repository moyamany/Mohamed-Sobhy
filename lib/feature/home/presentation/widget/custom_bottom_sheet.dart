import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_string.dart';
import 'package:my_portfolio/feature/home/presentation/widget/custome_text_list_tile.dart';

class CustomeBottomSheetView extends StatelessWidget {
  final void Function(int) onTap;
  const CustomeBottomSheetView({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.close),
          ),
        ),
        CustomeTextListTile(
          title: AppString.about,
          onTap: () {
            onTap(0);
          },
        ),
        CustomeTextListTile(
          title: AppString.skills,
          onTap: () {
            onTap(1);
          },
        ),
        CustomeTextListTile(
          title: AppString.projects,
          onTap: () {
            onTap(2);
          },
        ),
        CustomeTextListTile(
          title: AppString.tutorials,
          onTap: () {
            onTap(4);
          },
        ),
        CustomeTextListTile(
          title: AppString.contact,
          onTap: () {
            onTap(5);
          },
        ),
      ],
    );
  }
}
