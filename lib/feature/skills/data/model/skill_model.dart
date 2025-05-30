import 'package:my_portfolio/core/utils/image_assets.dart';

class SkillModel {
  final String title;
  final String imagePath;

  SkillModel({required this.title, required this.imagePath});
  static List<SkillModel> skills = [
    SkillModel(title: "C++", imagePath: AppImageAssets.cPlusPlus),
    SkillModel(title: "Java", imagePath: AppImageAssets.javaLogo),
    SkillModel(title: "Python", imagePath: AppImageAssets.pythonLogo),
    SkillModel(title: "Dart", imagePath: AppImageAssets.dartLogo),
    SkillModel(title: "Flutter", imagePath: AppImageAssets.flutterLogo),
    SkillModel(title: "Html", imagePath: AppImageAssets.htmlLogo),
    SkillModel(title: "Css", imagePath: AppImageAssets.cssLogo),
    SkillModel(title: "C#", imagePath: AppImageAssets.cSharpLogo),
    SkillModel(title: "Asp .net", imagePath: AppImageAssets.aspNetLogo),
  ];
}
