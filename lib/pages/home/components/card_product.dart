import 'package:flutter/material.dart';
import 'package:watch_store/pages/detail/detail_screen.dart';

class CardProduct extends StatefulWidget {
  const CardProduct(
      {Key? key,
      required this.image,
      required this.subTitle,
      required this.title})
      : super(key: key);
  final String image, title, subTitle;
  @override
  _CardProductState createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (con)=>DetailScreen()));
            },
            child: Container(
              alignment: Alignment.topRight,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xfffdd691),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(8.0),
                height: size.height / 20,
                width: size.width / 10,
                decoration: BoxDecoration(
                  color: Color(0xffe8bc73),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      favorite = !favorite;
                    });
                  },
                  icon: Icon(
                    favorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  fontFamily: "customFont",
                  letterSpacing: 7,
                  fontSize: size.width / 55,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                widget.subTitle,
                style: TextStyle(
                  fontFamily: "customFont",
                  letterSpacing: 7,
                  fontSize: size.width / 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
