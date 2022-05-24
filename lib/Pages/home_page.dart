import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       body: Container(
         height: double.infinity,
         width: double.infinity,
         color: const Color(0xff17181f),
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 52),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children:  [
                   const Padding(
                     padding: EdgeInsets.all(16.0),
                     child: Text("Welcome back!",
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.w700,
                         fontSize: 28,
                       ),
                     ),
                   ),
                   Container(
                     margin: const EdgeInsets.all(16.0),
                     padding: const EdgeInsets.all(4.0),
                     decoration:const BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.white
                     ),
                     child: const Icon(Icons.menu,
                     ),
                   )
                 ],
               ),
             ), // welcome back!
              Image.asset("lib/images/college_logo-removebg-preview.png"),
           ],
         ),
       ),
       ),
    );
  }
}
