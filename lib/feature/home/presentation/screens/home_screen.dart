import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/home/presentation/views/home_screen_body_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image(
              image: AssetImage("assets/gradient_2.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          HomeScreenBodyView(),
        ],
      ),
    );
  }
}
