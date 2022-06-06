
import 'package:flutter/material.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.brown,
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: const Center(
                  child: Text(
                "Attendance",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              )),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient:const  LinearGradient(
                        colors: [
                          Color(0xff928DAB),
                          Color(0xff1F1C2C),
                          Color(0xff1F1C2C)
                        ]
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    // list tile
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Data Science",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "23/86",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Container(
                    height: 80,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient:const  LinearGradient(
                          colors: [
                            Color(0xffFF512F),
                            Color(0xffF09819),
                            Color(0xffFF512F)
                          ]
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    // list tile
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Artificial Intelligence",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "56/89",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Container(
                    height: 80,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient:const  LinearGradient(
                          colors: [
                            Color(0xffDD5E89),
                            Color(0xffDD5E89),
                            Color(0xffDD5E89)
                          ]
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    // list tile
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Cloud Computing",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "41/47",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Container(
                    height: 80,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient:const  LinearGradient(
                          colors: [
                            Color(0xff24C6DC),
                            Color(0xff514A9D),
                            Color(0xff24C6DC)
                          ]
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    // list tile
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Compiler Design",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "27/36",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Container(
                    height: 80,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient:const  LinearGradient(
                          colors: [
                            Color(0xffC04848),
                            Color(0xff480048),
                            Color(0xffC04848)
                          ]
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    // list tile
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Wireless Communication",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "48/54",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
