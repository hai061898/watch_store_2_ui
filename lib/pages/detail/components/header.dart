import 'package:flutter/material.dart';
import 'package:watch_store/pages/home/home_screen.dart';

import 'product_title.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SafeArea(
            child: Column(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xffffda9c),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (con) => HomeScreen(),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_up_sharp,
                            ),
                            onPressed: () {},
                          ),
                          ProductDetail(
                            title: "BRAND",
                            subTitle: "BHILFIGERR",
                          ),
                          ProductDetail(
                            title: "STRAP",
                            subTitle: "SILICONE",
                          ),
                          ProductDetail(
                            title: "COLOR",
                            subTitle: "ROSE GOLD",
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.topRight,
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xfffdd691),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 24,
                            child: CircleAvatar(
                              radius: 7,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 3),
                                  child: Text("1"),
                                ),
                              ),
                              backgroundColor: Color(0xff233a66),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}