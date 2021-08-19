import 'package:flutter/material.dart';

class BannerProduct extends StatelessWidget {
  const BannerProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 4 - 37,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffd792),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "W10-00",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xffad8347),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "WISHDOIT",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff2a3d50),
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Flexible(
                    child: Text(
                      "Fashion Men Quartz\nwatch Luxury Leathers\nStrop WAterprof",
                      style: TextStyle(
                        color: Color(0xffad8347),
                        
                        fontSize: 10,
                      ),
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      elevation: 0,
                      color: Color(0xfffbf9e4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Buy Now",
                            style: TextStyle(
                              color: Color(0xff846b4d),
                            ),
                          ),
                          Flexible(
                            child: Icon(
                              Icons.arrow_forward_sharp,
                              color: Color(0xff846b4d),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Image.asset("images/image1.png"),
          )
        ],
      ),
    );
  }
}
