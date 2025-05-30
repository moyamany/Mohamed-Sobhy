import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'my_portfolio_state.dart';

class MyPortfolioCubit extends Cubit<MyPortfolioState> {
  MyPortfolioCubit() : super(MyPortfolioInitial());
  final List<GlobalKey> sectionKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  void scrollToSection(BuildContext context, int index) {
    final keyContext = sectionKeys[index].currentContext;
    if (keyContext != null) {
      Scrollable.ensureVisible(
        keyContext,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        // center the target on screen
      );
      log("you move here");
    }
  }
}
