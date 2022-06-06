import 'package:flutter/material.dart';

class PlacementWidget extends StatelessWidget {
  const PlacementWidget({Key? key, required this.package, required this.selections, required this.imgUrl}) : super(key: key);
  final String package;
  final int selections;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(// Placement widget
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          gradient: LinearGradient(
              colors: [
                Color(0xffE0EAFC),
                Color(0xffCFDEF3),
                Color(0xffE0EAFC)
              ]
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 135,
                height: 150,
                child: Image.asset(
                  imgUrl ,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:  [
                  const SizedBox(height: 8,),
                  Text("Package : $package LPA",
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
                  ),
                  Text("No of Selections : $selections",
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
