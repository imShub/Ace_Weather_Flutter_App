import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app_assignment/screens/loginPage.dart';
import 'package:weather_app_assignment/screens/profilePage.dart';

import '../widgets/dropdownBtn.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
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
                // mainAxisAlignment: MainAxisAlignment.s,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProfilePage(),
                                ));
                          },
                          child: Text(
                            "Profile",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Text(
                          "Edit",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff2F2F2F),
                          radius: 70,
                        ),
                        Icon(
                          Icons.add_a_photo,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Supp!",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Arif Shaikh",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        // size: 1,
                        weight: 2,
                      ),
                      Expanded(
                        child: TextField(
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
                              "Palm Spring",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Poppins",
                              ),
                              textDirection: TextDirection.ltr,
                              // softWrap: true,
                            ),
                            suffixIcon: Icon(
                              Icons.arrow_downward,
                              color: Colors.white,
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
                      ),
                    ],
                  ),

                  //logo
                  // Container(
                  //   padding: const EdgeInsets.only(
                  //     left: 10,
                  //     right: 10,
                  //     top: 60,
                  //   ),
                  //   child: Image(
                  //     image: AssetImage("assets/images/tenkeoho_black.png"),
                  //   ),
                  // ),
                  SizedBox(
                    height: 30,
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
                  // // ),
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
                        "Arif Shaik",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Poppins",
                            color: Colors.white),
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
                        "Arifshaik@gmail.com",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Poppins",
                            color: Colors.white),
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
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                            color: Color(0xffA7BADE),
                            borderRadius: BorderRadius.circular(15),
                            border: Border(
                              bottom: BorderSide(color: Colors.black),
                              left: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black),
                            )),
                        child: Text(
                          "+91",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
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
                              "9999999999",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Poppins",
                                  color: Colors.white),
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
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
                        "Submit",
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
      ),
    );
  }
}
