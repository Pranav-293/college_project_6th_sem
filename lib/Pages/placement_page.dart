import 'package:daviet_app/custom_widgets/placement_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PlacementPage extends StatelessWidget {
  const PlacementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.brown,
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: const Center(
                child: Text(
                  "Placements",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const PlacementWidget(
              package: "54.50",
              selections: 1,
              imgUrl: "lib/images/syndigo.png",
            ),
            const PlacementWidget(
              package: "12",
              selections: 1,
              imgUrl: "lib/images/microsoft.png",
            ),
            const PlacementWidget(
              package: "12.56",
              selections: 1,
              imgUrl: "lib/images/federal_bank.png",
            ),
            const PlacementWidget(
              package: "13.94",
              selections: 12,
              imgUrl: "lib/images/zscalar.png",
            ),
            const PlacementWidget(
              package: "10.45",
              selections: 4,
              imgUrl: "lib/images/stmicro.png",
            ),
            const PlacementWidget(
              package: "7-10",
              selections: 1,
              imgUrl: "lib/images/sap.png",
            ),
            const PlacementWidget(
              package: "9",
              selections: 1,
              imgUrl: "lib/images/intellipat.png",
            ),
          ],
        ),
      )),
    );
  }
}
