import 'package:flutter/widgets.dart';

abstract class AppResponsive {
  static bool isMobile(BuildContext context) {
    return (MediaQuery.sizeOf(context).width < 800);
  }

  static bool isDesktop(BuildContext context) {
    return (MediaQuery.sizeOf(context).width > 1000);
  }

  static bool isTablet(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return (width < 1000 && width > 800);
  }
}
