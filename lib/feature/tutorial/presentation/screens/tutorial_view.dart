import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/tutorial/model/playlist_model.dart';
import 'package:my_portfolio/feature/tutorial/presentation/views/custom_image_card.dart';

class TutorialView extends StatefulWidget {
  const TutorialView({super.key});

  @override
  State<TutorialView> createState() => _TutorialViewState();
}

class _TutorialViewState extends State<TutorialView> {
  int _current = 0;

  final CarouselSliderController _controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getCarouselSlider(context),
      child: CarouselSlider(
        carouselController: _controller,
        options: CarouselOptions(
          enlargeCenterPage: true,
          autoPlay: true,
          viewportFraction: getViewPortFraction(context),
          initialPage: _current,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
        ),
        items: List.generate(PlaylistModel.getPlayList().length, (index) {
          return Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomPlayListCoverVideo(
                  model: PlaylistModel.getPlayList()[index],
                  selected: index == _current,
                ),
              );
            },
          );
        }),
      ),
    );
  }

  double getViewPortFraction(context) {
    double width = MediaQuery.sizeOf(context).width;

    if (width < 600) {
      return 0.80;
    } else if (width < 1024) {
      return 0.6;
    } else {
      return 0.4;
    }
  }

  double getCarouselSlider(context) {
    double width = MediaQuery.sizeOf(context).width;

    if (width < 600) {
      return 350;
    } else if (width < 1024) {
      return 450;
    } else {
      return 500;
    }
  }
}
