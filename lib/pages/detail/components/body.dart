import 'package:flutter/material.dart';

import 'bottom.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "TRENDING PRODUCTS",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "customFont",
                letterSpacing: 7,
              ),
            ),
            Text(
              "PRICE",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "customFont",
                letterSpacing: 7,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "DECKER WATCH",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 34,
                fontFamily: "customFont",
                letterSpacing: 7,
              ),
            ),
            Text(
              "345\$",
              style: TextStyle(
                fontSize: 34,
                color: Color(0xffffda9c),
                fontWeight: FontWeight.bold,
                fontFamily: "customFont",
                letterSpacing: 7,
              ),
            )
          ],
        ),
        Text(
          "Distinctive pole-position style characterises this men tommy hilfiger sport watch. The 46mm rose gold toned case features a crown-protector and bold bezal.The silicone straps gibe a suupercharged spin with racing stipes and a textual checker-board pattern watch is the racing start of collection. featuring  the... ",
          style: TextStyle(
            color: Color(0xffa4b2d7),
          ),
        ),
        BottomDetail()
      ],
    );
  }
}
