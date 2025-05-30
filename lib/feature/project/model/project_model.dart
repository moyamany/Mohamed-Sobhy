import 'package:my_portfolio/core/utils/image_assets.dart';

class ProjectModel {
  final String title;
  final String imageCover;
  final String description;
  final String projectType;
  final String projectUrl;

  ProjectModel({
    required this.title,
    required this.imageCover,
    required this.description,
    required this.projectType,
    required this.projectUrl,
  });

  static List<ProjectModel> getProjects() {
    return [
      ProjectModel(
        title: "Aldhaakirun Flutter App",
        imageCover: AppImageAssets.aldhakirun,
        description: '''🕌 Prayer Times & Azkar App ''',
        projectType: "Alarm For Pray Time",
        projectUrl: "https://youtu.be/qMMMvf7UCQY",
      ),
      ProjectModel(
        title: "Flutter Netflix Clone App",
        imageCover: AppImageAssets.netfilx,
        description:
            "Welcome to our latest Netflix Flutter App UI clone! 🎬🚀 In this video, we showcase a sleek and fully responsive Netflix-inspired app built with Flutter.",
        projectType: "API For Movies",
        projectUrl: "https://youtu.be/TgWS1imuywQ",
      ),
      ProjectModel(
        title: "Flutter Real Time Chat Application",
        imageCover: AppImageAssets.chatApp,
        description:
            "Discover the ultimate chat application built with Firebase Authentication for secure login and registration, handle pusch notifications",
        projectType: "Chat App",
        projectUrl: "https://youtu.be/akW7gn7Rc-I",
      ),
      ProjectModel(
        title: "Gpa Calculator Flutter App",
        imageCover: AppImageAssets.gpaCalculator,
        description:
            '''Are you looking for an easy way to calculate your GPA and stay organized throughout your academic journey? The GPA Calculator App is here to help! ''',
        projectType: "Learn",
        projectUrl: "https://youtu.be/2moPeaxK4os",
      ),
      ProjectModel(
        title: "Online Tic Tac Toe App",
        imageCover: AppImageAssets.todoApp,
        description:
            "Stay organized and never miss a task with the To-Do Scheduler App! ✅",
        projectType: "To Do",
        projectUrl: "https://youtu.be/tiGRLOWtjmY",
      ),
      ProjectModel(
        title: "⭕❌ Tic Tac Toa",
        imageCover: AppImageAssets.ticTacToe,
        description:
            "🎮 Real-Time Multiplayer : Firebase powers real-time updates, allowing two players to compete seamlessly across devices.",
        projectType: "Online Game",
        projectUrl: "https://youtu.be/jYDrJ10qfM8",
      ),
      ProjectModel(
        title: "Flutter Qaran-App",
        imageCover: AppImageAssets.quranApp,
        description:
            "📖 Qarany is a comprehensive mobile application that brings the complete Quran to your fingertips, offering an intuitive interface to explore Surahs and Ayahs, with support for multiple languages and themes.",
        projectType: "Api",
        projectUrl: "https://youtu.be/oh6PjcKJH6Y",
      ),

      ProjectModel(
        title: "Flutter Gemini Application",
        imageCover: AppImageAssets.geminiApp,
        description:
            "Welcome to the Flutter Gemini App, your personal AI-powered chat companion! 🌟",
        projectType: "Api",
        projectUrl: "https://youtu.be/aMQtJfBBqlQ",
      ),
      ProjectModel(
        title: "Flutter Gemini Application",
        imageCover: AppImageAssets.wallyPaper,
        description:
            "Welcome to the Wallpaper App! This application allows you to discover, customize, and personalize your device's wallpaper with ease. Below are the key features of the app:Features",
        projectType: "Api",
        projectUrl: "https://youtu.be/RVaXJcNwhnI",
      ),
    ];
  }
}
