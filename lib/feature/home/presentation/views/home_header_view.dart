import 'package:flutter/material.dart';
import 'package:my_portfolio/core/helper/app_responsive.dart';
import 'package:my_portfolio/feature/home/presentation/views/header_desktop_view.dart';
import 'package:my_portfolio/feature/home/presentation/views/mobile_menu_icon.dart';

class HomeHeaderView extends StatelessWidget {
  final void Function(int) onTap;
  const HomeHeaderView({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppResponsive.isMobile(context)
        ? MobileDrawerView(onTap: onTap)
        : HeaderDeskTopView(onTap: onTap);
  }
}
