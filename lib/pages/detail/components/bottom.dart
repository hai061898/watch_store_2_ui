import 'package:flutter/material.dart';

class BottomDetail extends StatefulWidget {
  const BottomDetail({Key? key}) : super(key: key);

  @override
  _BottomDetailState createState() => _BottomDetailState();
}

class _BottomDetailState extends State<BottomDetail> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: MaterialButton(
            onPressed: () {},
            height: 55,
            color: Color(0xfffdd691),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              "ADD TO CART",
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff303136),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              color: Color(0xffffad390),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    favorite = !favorite;
                  });
                },
                icon: Icon(
                  favorite ? Icons.favorite : Icons.favorite_border,
                  color: Color(0xffff6d80),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
