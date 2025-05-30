import 'package:my_portfolio/core/utils/image_assets.dart';

class PlaylistModel {
  final String title;
  final String url;
  final String imageCover;

  PlaylistModel({
    required this.title,
    required this.url,
    required this.imageCover,
  });

  static List<PlaylistModel> getPlayList() {
    return [
      PlaylistModel(
        title: "CodeForce General",
        url:
            "https://www.youtube.com/watch?v=7HuFGMlmWUw&list=PLde0K4lh-qITnW4b6VaQU04-PxGgBygOR&ab_channel=StackMind",
        imageCover: AppImageAssets.chatApp,
      ),
      PlaylistModel(
        title: "Binary Search",
        url:
            "https://www.youtube.com/watch?v=7HuFGMlmWUw&list=PLde0K4lh-qITnW4b6VaQU04-PxGgBygOR&ab_channel=StackMind",
        imageCover: "",
      ),
      PlaylistModel(
        title: "Prefix Sum",
        url:
            "https://www.youtube.com/watch?v=7HuFGMlmWUw&list=PLde0K4lh-qITnW4b6VaQU04-PxGgBygOR&ab_channel=StackMind",
        imageCover: AppImageAssets.chatApp,
      ),
      PlaylistModel(
        title: "Standard Template Library",
        url:
            "https://www.youtube.com/watch?v=7HuFGMlmWUw&list=PLde0K4lh-qITnW4b6VaQU04-PxGgBygOR&ab_channel=StackMind",
        imageCover: AppImageAssets.chatApp,
      ),
      // PlaylistModel(
      //   title: "Frequency Array",
      //   imageCover: AppImageAssets.chatApp,
      //   url:
      //       "https://www.youtube.com/watch?v=7HuFGMlmWUw&list=PLde0K4lh-qITnW4b6VaQU04-PxGgBygOR&ab_channel=StackMind",
      // ),
      // PlaylistModel(
      //   title: "Complexity Analysis",
      //   imageCover: AppImageAssets.chatApp,
      //   url:
      //       "https://www.youtube.com/watch?v=7HuFGMlmWUw&list=PLde0K4lh-qITnW4b6VaQU04-PxGgBygOR&ab_channel=StackMind",
      // ),
    ];
  }
}
