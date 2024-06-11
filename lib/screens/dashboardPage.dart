import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:weather_app_assignment/screens/loginPage.dart';
import 'package:weather_app_assignment/screens/profilePage.dart';
import 'package:weather_app_assignment/src/settings/settings_view.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    double _lowerValue = 50;
    double _upperValue = 30;
    return Scaffold(
      // backgroundColor: const Color(0xffF2F7FF),
      // extendBodyBehindAppBar: true,
      body: SafeArea(
        child: SingleChildScrollView(
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
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                ),
                                Text(
                                  "Palm Spring",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "Thursday, 7 March | 3 : 59 PM",
                                style: TextStyle(
                                    fontSize: 9, color: Colors.black87),
                              ),
                            )
                          ],
                        ),
                        GestureDetector(
                          child: Icon(Icons.more_vert),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProfilePage(),
                                ));
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Image(
                      image: AssetImage("assets/images/b_cloud.png"),
                    ),
                  ),
                  Text(
                    "24°",
                    style: TextStyle(
                      fontSize: 80,
                    ),
                  ),
                  Text(
                    "Mostly Sunny 24°/33° ",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Air Quality: 77 - Good",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // Cloud Row
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffC7D7F5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Now",
                                style: TextStyle(fontSize: 10),
                              ),
                              Image(
                                image: AssetImage("assets/images/b_cloud.png"),
                                height: 30,
                                width: 40,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                '''

24°''',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Now",
                                style: TextStyle(fontSize: 10),
                              ),
                              Image(
                                image: AssetImage("assets/images/b_cloud.png"),
                                height: 30,
                                width: 40,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                '''

24°''',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Now",
                                style: TextStyle(fontSize: 10),
                              ),
                              Image(
                                image: AssetImage("assets/images/b_cloud.png"),
                                height: 30,
                                width: 40,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                '''

24°''',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Now",
                                style: TextStyle(fontSize: 10),
                              ),
                              Image(
                                image: AssetImage("assets/images/b_cloud.png"),
                                height: 30,
                                width: 40,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                '''

24°''',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Now",
                                style: TextStyle(fontSize: 10),
                              ),
                              Image(
                                image: AssetImage("assets/images/b_cloud.png"),
                                height: 30,
                                width: 40,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                '''

24°''',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // Cloud Column
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffC7D7F5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/images/b_cloud.png",
                                    ),
                                    height: 24,
                                    width: 30,
                                  ),
                                  Text("    Tomorow"),
                                ],
                              ),
                              Text("24°/33° "),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/images/cloud.png",
                                    ),
                                    height: 24,
                                    width: 30,
                                  ),
                                  Text("    Saturday"),
                                ],
                              ),
                              Text("24°/33° "),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/images/cloud.png",
                                    ),
                                    height: 24,
                                    width: 30,
                                  ),
                                  Text("    Sunday"),
                                ],
                              ),
                              Text("24°/33° "),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/images/b_cloud.png",
                                    ),
                                    height: 24,
                                    width: 30,
                                  ),
                                  Text("    Monday"),
                                ],
                              ),
                              Text("24°/33° "),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/images/cloud.png",
                                    ),
                                    height: 24,
                                    width: 30,
                                  ),
                                  Text("    Tuesday"),
                                ],
                              ),
                              Text("24°/33° "),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffC7D7F5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: EdgeInsets.all(22),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage("assets/images/sun.png"),
                                  height: 32,
                                  width: 32,
                                ),
                                Text(
                                  " UV",
                                  style: TextStyle(
                                    fontSize: 11.2,
                                  ),
                                ),
                                Text(
                                  "12 Strong",
                                  style: TextStyle(
                                    fontSize: 13.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffC7D7F5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: EdgeInsets.all(22),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage("assets/images/temp.png"),
                                  height: 32,
                                  width: 32,
                                ),
                                Text(
                                  " Feels Like",
                                  style: TextStyle(
                                    fontSize: 11.2,
                                  ),
                                ),
                                Text(
                                  "12 Strong",
                                  style: TextStyle(
                                    fontSize: 13.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffC7D7F5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: EdgeInsets.all(22),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage("assets/images/light.png"),
                                  height: 32,
                                  width: 32,
                                ),
                                Text(
                                  " Humidity",
                                  style: TextStyle(
                                    fontSize: 11.2,
                                  ),
                                ),
                                Text(
                                  "12 Strong",
                                  style: TextStyle(
                                    fontSize: 13.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffC7D7F5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: EdgeInsets.all(22),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage("assets/images/sun.png"),
                                  height: 32,
                                  width: 32,
                                ),
                                Text(
                                  " UV",
                                  style: TextStyle(
                                    fontSize: 11.2,
                                  ),
                                ),
                                Text(
                                  "12 Strong",
                                  style: TextStyle(
                                    fontSize: 13.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffC7D7F5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: EdgeInsets.all(22),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage("assets/images/temp.png"),
                                  height: 32,
                                  width: 32,
                                ),
                                Text(
                                  " Feels Like",
                                  style: TextStyle(
                                    fontSize: 11.2,
                                  ),
                                ),
                                Text(
                                  "12 Strong",
                                  style: TextStyle(
                                    fontSize: 13.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffC7D7F5),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: EdgeInsets.all(22),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage("assets/images/light.png"),
                                  height: 32,
                                  width: 32,
                                ),
                                Text(
                                  " Humidity",
                                  style: TextStyle(
                                    fontSize: 11.2,
                                  ),
                                ),
                                Text(
                                  "12 Strong",
                                  style: TextStyle(
                                    fontSize: 13.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffC7D7F5),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/sunrise.png"),
                                      height: 22,
                                      width: 24,
                                    ),
                                    Text("Sunrise"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/sunset.png"),
                                      height: 22,
                                      width: 24,
                                    ),
                                    Text("Sunset"),
                                  ],
                                ),
                              ],
                            ),
                            FlutterSlider(
                              values: [300],
                              max: 500,
                              min: 0,
                              tooltip: FlutterSliderTooltip(disabled: true),
                              handler: FlutterSliderHandler(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: Icon(
                                  Icons.wb_sunny_outlined,
                                  size: 25,
                                ),
                              ),
                              trackBar: FlutterSliderTrackBar(
                                  activeTrackBar:
                                      BoxDecoration(color: Color(0xff2F2F2F))),
                              onDragging:
                                  (handlerIndex, lowerValue, upperValue) {
                                _lowerValue = lowerValue;
                                _upperValue = upperValue;
                                setState(() {});
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("6:53 AM"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("6:46 PM"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
