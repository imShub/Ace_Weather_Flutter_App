import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app_assignment/screens/loginPage.dart';
import 'package:weather_app_assignment/src/sample_feature/sample_item_list_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Center(
            child: AnimatedSplashScreen(
              duration: 3000,
              splash: "assets/images/tenkeoho_white.png",
              nextScreen: LoginPage(),
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor: Color(0xff1E1E1E),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image(
            image: AssetImage("assets/images/clouds_1.png"),
          ),
        )
      ],
    );
  }
}
