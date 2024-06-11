import 'package:flutter/material.dart';
import 'package:weather_app_assignment/screens/loginPage.dart';

import '../widgets/dropdownBtn.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    var locations = [
      "Malad",
      "Goregaon",
      "Andheri",
      "Jogeshwari",
      "Bandra",
    ];

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
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //logo
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 60,
                  ),
                  child: Image(
                    image: AssetImage("assets/images/tenkeoho_black.png"),
                  ),
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
                TextField(
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    label: Text(
                      "Username",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Poppins",
                      ),
                      textDirection: TextDirection.ltr,
                      softWrap: true,
                    ),
                    // labelStyle: TextStyle(fontSize: 12),
                    floatingLabelStyle: const TextStyle(
                        // fontSize: 12,
                        ),
                    fillColor: Color(0xffA7BADE),
                    filled: true,
                    // hoverColor: Color(0xffA7BADE),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    label: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Poppins",
                      ),
                      textDirection: TextDirection.ltr,
                      softWrap: true,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    // labelStyle: TextStyle(fontSize: 12),
                    floatingLabelStyle: const TextStyle(
                        // fontSize: 12,
                        ),
                    fillColor: Color(0xffA7BADE),
                    filled: true,
                    // hoverColor: Color(0xffA7BADE),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    label: Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Poppins",
                      ),
                      textDirection: TextDirection.ltr,
                      softWrap: true,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    // labelStyle: TextStyle(fontSize: 12),
                    floatingLabelStyle: const TextStyle(
                        // fontSize: 12,
                        ),
                    fillColor: Color(0xffA7BADE),
                    filled: true,
                    // hoverColor: Color(0xffA7BADE),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    label: Text(
                      "Location",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Poppins",
                      ),
                      textDirection: TextDirection.ltr,
                      softWrap: true,
                    ),
                    suffixIcon: Icon(Icons.arrow_downward),
                    // labelStyle: TextStyle(fontSize: 12),
                    floatingLabelStyle: const TextStyle(
                        // fontSize: 12,
                        ),
                    fillColor: Color(0xffA7BADE),
                    filled: true,
                    // hoverColor: Color(0xffA7BADE),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 150, vertical: 16),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff2F2F2F),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
