import 'package:daviet_app/Pages/attendance_page.dart';
import 'package:daviet_app/Pages/placement_page.dart';
import 'package:daviet_app/custom_widgets/home_page_widgets.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          extendBodyBehindAppBar: true,
          drawer: Drawer(
            child: ListView(
              children: const [
                ListTile(
                  title: Text("Placements"),
                  onTap: null,
                ),
                ListTile(
                  title: Text("Placements"),
                  onTap: null,
                )
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
            title: Row(
              children: [
                Image.asset(
                  "lib/images/college_logo-removebg-preview.png",
                  height: 62,
                  width: 62,
                ),
                const Text("DAVIET"),
                const SizedBox(
                  width: 68,
                )
              ],
            ),
          ),
          body: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 400,
                child: Image.asset(
                  "lib/images/infra.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: double.infinity,
                    height: 130,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.black,
                          Colors.black87,
                          Colors.black54,
                        ])),
                  ),
                  Container(
                    padding: const EdgeInsets.all(32.0),
                    width: double.infinity,
                    height: 450,
                    decoration: const BoxDecoration(
                        color: Color(0xff17181f),
                        //color: Color(0xff272848),
                        //color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(42),
                            topLeft: Radius.circular(42))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: const HomeWidget(
                                image: "lib/images/attendance.png",
                                title: "Attendance",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AttendancePage()));
                              },
                            ),
                            InkWell(
                              child: const HomeWidget(
                                image: "lib/images/notes.png",
                                title: "Notes",
                              ),
                              onTap: () {},
                            ),
                            InkWell(
                              child: const HomeWidget(
                                image: "lib/images/placement.png",
                                title: "Placements",
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const PlacementPage()));
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: const HomeWidget(
                                image: "lib/images/library.png",
                                title: "Library",
                              ),
                              onTap: () {},
                            ),
                            InkWell(
                              child: const HomeWidget(
                                image: "lib/images/scholarship.png",
                                title: "Scholarship",
                              ),
                              onTap: () {},
                            ),
                            InkWell(
                              child: const HomeWidget(
                                image: "lib/images/map.png",
                                title: "Map",
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: const HomeWidget(
                                image: "lib/images/hostel.png",
                                title: "Hostel",
                              ),
                              onTap: () {},
                            ),
                            InkWell(
                              child: const HomeWidget(
                                image: "lib/images/announcement.png",
                                title: "Announcement",
                              ),
                              onTap: () {},
                            ),
                            InkWell(
                              child: const HomeWidget(
                                image: "lib/images/clubs.png",
                                title: "Clubs",
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
    );
  }
}
