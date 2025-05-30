import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_string.dart';
import 'package:my_portfolio/feature/home/presentation/widget/custome_text_list_tile.dart';

class CustomeBottomSheetView extends StatelessWidget {
  const CustomeBottomSheetView({super.key});

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
        CustomeTextListTile(title: AppString.about, onTap: () {}),
        CustomeTextListTile(title: AppString.projects, onTap: () {}),
        CustomeTextListTile(title: AppString.tutorials, onTap: () {}),
        CustomeTextListTile(title: AppString.contact, onTap: () {}),
      ],
    );
  }
}
