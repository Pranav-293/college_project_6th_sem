import 'package:daviet_app/custom_widgets/home_page_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                child: Image.asset("lib/images/infra.jpg",
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
                        ]
                      )
                    ),
                  ),
                   Container(
                     padding: const EdgeInsets.all(24.0),
                     width: double.infinity,
                    height: 450,
                     decoration: const BoxDecoration(
                         color: Color(0xff17181f),
                       borderRadius: BorderRadius.only(topRight: Radius.circular(42),topLeft: Radius.circular(42))
                     ),
                     child: Column(
                       children: [
                         Row(
                           children: const [
                             HomeWidget(),
                           ],
                         )
                       ],
                     ),
                  )
                ],
              )
            ],
          )
        ),
    );
  }
}
