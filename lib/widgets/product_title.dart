import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({Key? key, this.title,this.subTile}) : super(key: key);
  final String? title,subTile;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: TextStyle(
                letterSpacing: 7,
                fontFamily: "customFont",
                color: Colors.white,
              ),
            ),
            Text(
              subTile!,
              style: TextStyle(
                letterSpacing: 7,
                fontSize: 30,
                fontFamily: "customFont",
                color: Colors.white,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back_ios_outlined,
                color: Color(0xfff0deba),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color(0xfff0deba),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
