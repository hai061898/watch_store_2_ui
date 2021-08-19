import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, required this.subTitle,required this.title}) : super(key: key);
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: "customFont",
            color: Color(0xfff0deba),
          ),
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontFamily: "customFont",
            fontSize: 30,
            color: Color(0xfff0deba),
          ),
        )
      ],
    );
  }
}
