import 'package:day_9_with_flutter/feed_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isDark = false;
  final lightColor = Colors.white;
  final darkColor = Color.fromARGB(103, 24, 24, 24);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? darkColor : lightColor,
      body: SingleChildScrollView(
        child: Container(
          color: isDark ? darkColor : lightColor,
          margin: EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                trailing: IconButton(
                  icon: Icon(isDark ? Ionicons.sunny : Ionicons.moon_outline),
                  color: isDark ? lightColor : Colors.black,
                  onPressed: () {
                    setState(() {
                      isDark = !isDark;
                    });
                  },
                ),
              ),
              CircleAvatar(
                radius: 66,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 63,
                  backgroundColor: isDark ? Colors.black : lightColor,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/kk.jpg"),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Kuvaan16",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: isDark ? lightColor : Colors.black,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Developer",
                style: TextStyle(
                    color: isDark
                        ? Color.fromARGB(115, 255, 255, 255)
                        : Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Ionicons.logo_instagram,
                    size: 18,
                    color: isDark ? Colors.white : Colors.black87,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Ionicons.logo_github,
                    size: 18,
                    color: isDark ? Colors.white : Colors.black87,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Ionicons.logo_linkedin,
                    size: 18,
                    color: isDark ? Colors.white : Colors.black87,
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "3",
                        style: TextStyle(
                            color: isDark ? lightColor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        "Years of\nwork",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isDark
                                ? Color.fromARGB(115, 255, 255, 255)
                                : Colors.black54),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "8",
                        style: TextStyle(
                            color: isDark ? lightColor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        "Completed\nprojects",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isDark
                                ? Color.fromARGB(115, 255, 255, 255)
                                : Colors.black54),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "4",
                        style: TextStyle(
                            color: isDark ? lightColor : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        "Years of\nstudying",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isDark
                                ? Color.fromARGB(115, 255, 255, 255)
                                : Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text("Download CV"),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Ionicons.download_outline)
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: isDark ? Colors.grey[700] : Colors.black12,
                          ),
                          child: Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 18,
                            color: isDark ? Colors.white : Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: isDark ? Colors.grey[700] : Colors.black12,
                          ),
                          child: Icon(
                            FontAwesomeIcons.facebookMessenger,
                            size: 18,
                            color: isDark ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                width: 280,
                height: 50,
                decoration: BoxDecoration(
                    color: isDark ? Colors.grey[700] : Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 4, top: 4, bottom: 4),
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: isDark
                              ? Color.fromARGB(255, 0, 0, 0)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Projects",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isDark ? Colors.white : Colors.black),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 4, top: 4, bottom: 4),
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "Skills",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isDark ? Colors.white : Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 450,
                child: FeedView(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.copyright,
                      color: isDark
                          ? Color.fromARGB(115, 255, 255, 255)
                          : Color.fromARGB(88, 0, 0, 0),
                      size: 18,
                    ),
                    Text(
                      "Kuvaan16. All rights reserved",
                      style: TextStyle(
                          color: isDark
                              ? Color.fromARGB(115, 255, 255, 255)
                              : Color.fromARGB(88, 0, 0, 0),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
