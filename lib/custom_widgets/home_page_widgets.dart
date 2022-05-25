
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key, required this.title, required this.image}) : super(key: key);
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffcb69c1),
            Color(0xff6c72cb)
          ],
        ),
          borderRadius: BorderRadius.all(Radius.circular(14))
      ),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
            color: Color(0xff17181f),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                image,
              ),
            ),
            Text(title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
