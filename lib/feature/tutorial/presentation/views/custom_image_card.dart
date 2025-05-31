import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/tutorial/model/playlist_model.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomPlayListCoverVideo extends StatelessWidget {
  final PlaylistModel model;
  final bool selected;
  const CustomPlayListCoverVideo({
    super.key,
    required this.model,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,
        height: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(model.imageCover),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withAlpha((255 * 0.22).toInt()),
              ),
            ),
            if (selected)
              Center(
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withAlpha(
                          (0.6 * 255).toInt(),
                        ), // Soft white shadow
                        blurRadius: 12,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        final Uri url = Uri.parse(model.url);
                        launchUrl(url);
                      },
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
