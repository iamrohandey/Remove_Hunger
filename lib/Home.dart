import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:zero_hunger/HelpSupport.dart';
import 'package:zero_hunger/PhoneNumber.dart';
import 'package:zero_hunger/TabPage/More.dart';
import 'package:zero_hunger/TabPage/Profile.dart';
import 'package:zero_hunger/ViewData.dart';
import 'package:zero_hunger/WorldSituation.dart';
import 'TabPage/ChatScreen.dart';
import 'Button.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

final navigatorKey = GlobalKey<NavigatorState>();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.purple[900],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_circle_rounded,
                      ),
                    ),
                    TextButton(
                        child: Text(
                          "Location",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Poppins"),
                        ),
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white)),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                )
              ],
            )),
        // drawer: Drawer(
        //   backgroundColor: Colors.purple[900],
        //   child: SafeArea(
        //       child: Column(
        //     children: [
        //       SizedBox(
        //         height: 40,
        //       ),
        //       Padding(
        //         padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
        //         child: ListTile(
        //           dense: true,
        //           title: Text(
        //             "Home Page",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 20,
        //               fontWeight: FontWeight.w600,
        //             ),
        //           ),
        //           leading: Icon(
        //             Icons.home,
        //             color: Colors.white60,
        //           ),
        //           onTap: () {
        //             //action when this menu is pressed
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => HomePage()),
        //             );
        //           },
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
        //         child: ListTile(
        //           dense: true,
        //           title: Text(
        //             "World Situation",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 20,
        //               fontWeight: FontWeight.w600,
        //             ),
        //           ),
        //           leading: Icon(
        //             Icons.balcony_outlined,
        //             color: Colors.white60,
        //           ),
        //           onTap: () {
        //             //action when this menu is pressed
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => WorldSituation()),
        //             );
        //           },
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
        //         child: ListTile(
        //           dense: true,
        //           title: Text(
        //             "Health Care",
        //             style: TextStyle(
        //               fontSize: 20,
        //               color: Colors.white,
        //               fontWeight: FontWeight.w600,
        //             ),
        //           ),
        //           leading: Icon(
        //             Icons.add_box,
        //             color: Colors.white60,
        //           ),
        //           onTap: () {
        //             //action when this menu is pressed
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => HealthCare()),
        //             );
        //           },
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
        //         child: ListTile(
        //           dense: true,
        //           title: Text(
        //             "Past Donation",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 20,
        //               fontWeight: FontWeight.w600,
        //             ),
        //           ),
        //           leading: Icon(
        //             Icons.monitor_heart,
        //             color: Colors.white60,
        //           ),
        //           onTap: () {
        //             //action when this menu is pressed
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => ViewData()),
        //             );
        //           },
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
        //         child: ListTile(
        //           dense: true,
        //           title: Text(
        //             "Help & Support",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 20,
        //               fontWeight: FontWeight.w600,
        //             ),
        //           ),
        //           leading: Icon(
        //             Icons.contact_support_sharp,
        //             color: Colors.white60,
        //           ),
        //           onTap: () {
        //             //action when this menu is pressed
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => HelpSupport()),
        //             );
        //           },
        //         ),
        //       ),
        //     ],
        //   )),
        // ),
        body: Container(
          height: 600,
          child: Column(
            children: [
              Center(
                child: ImageSlideshow(
                  width: 450,
                  height: 150,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/slide1.jpeg",
                        fit: BoxFit.fill,
                        height: 50,
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/slide1.jpeg",
                        fit: BoxFit.fill,
                        height: 50,
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/slide1.jpeg",
                        fit: BoxFit.fill,
                        height: 50,
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/slide1.jpeg",
                        fit: BoxFit.fill,
                        height: 50,
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/slide1.jpeg",
                        fit: BoxFit.fill,
                        height: 50,
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/slide1.jpeg",
                        fit: BoxFit.fill,
                        height: 50,
                      ),
                    ),
                  ],
                  autoPlayInterval: 3000,
                  isLoop: true,
                ),
              ),
              Container(padding: EdgeInsets.only(bottom: 50)),
              Text(
                "Our small donation can improve",
                style: TextStyle(
                  overflow: null,
                  fontFamily: 'lorem Lipsum',
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent[700],
                  fontSize: 25,
                ),
              ),
              Text(
                "other's lives",
                style: TextStyle(
                  overflow: null,
                  fontFamily: 'lorem Lipsum',
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent[700],
                  fontSize: 25,
                ),
              ),
              MyButton(
                text: 'Self-Donation',
                height: 100,
              ),
              MyButton(
                text: 'Donate to NGO',
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
