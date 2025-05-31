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
        title: "Complexity Analysis",
        url:
            "https://www.youtube.com/playlist?list=PLde0K4lh-qITlh8a3Qcbg3K9yWY-aVC1L",
        imageCover: AppImageAssets.complexity,
      ),
      PlaylistModel(
        title: "Prefix Sum",
        url:
            "https://www.youtube.com/playlist?list=PLde0K4lh-qIQ0QAu_j_tBKZCf0ry9kNUE",
        imageCover: AppImageAssets.prefixSum,
      ),
      PlaylistModel(
        title: "Frequency Array",
        url:
            "https://www.youtube.com/playlist?list=PLde0K4lh-qIQaBhHY__6PLkd8QYaS_Ub5",
        imageCover: AppImageAssets.frequencyArray,
      ),
      PlaylistModel(
        title: "Binary Search",
        url:
            "https://www.youtube.com/playlist?list=PLde0K4lh-qITnW4b6VaQU04-PxGgBygOR",
        imageCover: AppImageAssets.binarySearcn,
      ),
       PlaylistModel(
        title: "Two Pointer",
        url:
            "https://www.youtube.com/playlist?list=PLde0K4lh-qISGSi_ArLnWU1n_H2oIJ6_B",
        imageCover: AppImageAssets.twoPointer,
      ),
     
    ];
  }
}
