import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/home/presentation/widget/custom_bottom_sheet.dart';
import 'package:my_portfolio/feature/home/presentation/widget/my_logo_widget.dart';

class MobileDrawerView extends StatelessWidget {
  final void Function(int) onTap;
  const MobileDrawerView({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          MyLogoWidget(onTap: () {}),
          const Spacer(),
          IconButton(
            onPressed: () {
              Scaffold.of(context).showBottomSheet(
                (context) => CustomeBottomSheetView(onTap: onTap),
              );
            },
            icon: Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
