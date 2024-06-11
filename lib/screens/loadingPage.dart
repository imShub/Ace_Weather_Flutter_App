import 'dart:ui';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app_assignment/screens/dashboardPage.dart';

import 'signUpPage.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffF2F7FF),
      // extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
          // alignment: Alignment.topLeft,
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              // scale: ,
              image: AssetImage(
                "assets/images/clouds_2.png",
              ),
              fit: BoxFit.fitWidth,
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 1.0],
              colors: [
                Color(0xFFD2E0FB),
                Color(0xFFF2F7FF),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //logo
                Image(
                  image: AssetImage("assets/images/tenkeoho_black.png"),
                ),
                SizedBox(
                  height: 40,
                ),
                //username
                // const Text(
                //   "Username",
                //   style: TextStyle(
                //     fontSize: 14,
                //     fontWeight: FontWeight.normal,
                //     fontFamily: "Poppins",
                //   ),
                //   textAlign: TextAlign.left,
                // ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Loading Your ",
                      style: TextStyle(
                        fontSize: 20,
                        // fontStyle: FontStyle.italic,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DashboardPage(),
                            ));
                      },
                      child: Image(
                        image: AssetImage("assets/images/मौसम_b.png"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
