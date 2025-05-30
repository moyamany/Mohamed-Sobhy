import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_text_styles.dart';
import 'package:my_portfolio/feature/contact/presentation/screens/contact_view.dart';
import 'package:my_portfolio/feature/home/presentation/views/home_header_view.dart';
import 'package:my_portfolio/feature/project/presentation/screens/projects_view.dart';
import 'package:my_portfolio/feature/skills/presentation/screens/skills_view.dart';
import 'package:my_portfolio/feature/tutorial/presentation/screens/tutorial_view.dart';
import 'package:my_portfolio/feature/tutorial/presentation/views/stack_mind_description.dart';
import 'package:my_portfolio/feature/tutorial/presentation/views/stack_mind_title.dart';
import 'package:my_portfolio/feature/tutorial/presentation/views/visit_channele_view.dart';
import '../../../about/presentation/screens/about_me_view.dart';

class HomeScreenBodyView extends StatefulWidget {
  const HomeScreenBodyView({super.key});

  @override
  State<HomeScreenBodyView> createState() => _HomeScreenBodyViewState();
}

class _HomeScreenBodyViewState extends State<HomeScreenBodyView> {
  final List<GlobalKey> sectionKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverToBoxAdapter(
          child: HomeHeaderView(
            onTap: (index) {
              scrollToSection(context, index);
            },
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 30)),

        SliverToBoxAdapter(key: sectionKeys[0], child: AboutMeView()),
        const SliverToBoxAdapter(child: SizedBox(height: 35)),

        SliverToBoxAdapter(key: sectionKeys[1], child: SkillsView()),
        const SliverToBoxAdapter(child: SizedBox(height: 35)),

        SliverToBoxAdapter(
          key: sectionKeys[2],
          child: Center(
            child: Text(
              "My Projects",
              style: AppTextStyles.normalStyle(context, fontSize: 30),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 10)),
        const ProjectsView(),
        const SliverToBoxAdapter(child: SizedBox(height: 30)),
        StackMindTitle(key: sectionKeys[3]),
        StackMindDescription(),
        const SliverToBoxAdapter(child: SizedBox(height: 10)),
        SliverToBoxAdapter(child: TutorialView()),
        const SliverToBoxAdapter(child: SizedBox(height: 10)),
        SliverToBoxAdapter(child: VisitChanneleView()),
        const SliverToBoxAdapter(child: SizedBox(height: 30)),
        SliverToBoxAdapter(child: ContactView(key: sectionKeys[4])),
      ],
    );
  }

  void scrollToSection(BuildContext context, int index) {
    final keyContext = sectionKeys[index].currentContext;
    if (keyContext != null) {
      Scrollable.ensureVisible(
        keyContext,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
      log("you move here");
    }
  }
}
