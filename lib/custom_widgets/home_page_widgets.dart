import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffcb69c1),
            Color(0xff6c72cb)
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Center(
        child: Image.asset(
          "lib/images/placement.png",
        ),
      ),
    );
  }
}
