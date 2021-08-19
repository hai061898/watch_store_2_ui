import 'package:flutter/material.dart';

import 'components/body.dart';
import 'components/header.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Header(),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "images/image2.png",
                        scale: 2,
                      ),
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "TOMMY HILFIGER",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffebbb71),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Body(),
            ),
          ),
        ],
      ),
    );
  }
}




