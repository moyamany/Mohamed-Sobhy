import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder mobileApp;
  final WidgetBuilder tabletApp;
  final WidgetBuilder deskTopView;
  const AdaptiveLayout({
    super.key,
    required this.mobileApp,
    required this.tabletApp,
    required this.deskTopView,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth > 900) {
          return deskTopView(context);
        }
        if (constrains.maxWidth < 800) {
          return mobileApp(context);
        }
        return tabletApp(context);
      },
    );
  }
}
