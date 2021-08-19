import 'package:flutter/material.dart';
import 'package:watch_store/pages/home/components/banner.dart';
import 'package:watch_store/widgets/product_title.dart';

import 'components/card_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      key: _key,
      appBar: buildAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            ProductTitle(
              title: "FEATURED",
              subTile: "PRODUCTS",
            ),
            BannerProduct(),
            Container(
              height: size.height / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductTitle(
                    title: "TRENDING",
                    subTile: "PRODUCTS",
                  ),
                  Row(
                    children: [
                      CardProduct(
                        image: "assets/images/image3.png",
                        title: "FOSSIL",
                        subTitle: "GRANT WATCH",
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      CardProduct(
                        image: "assets/images/image2.png",
                        title: "Tommy HILFIGER",
                        subTitle: "DECKER WATCH",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          _key.currentState!.openDrawer();
        },
        icon: Icon(
          Icons.sort,
          color: Color(0xfff0deba),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
          ),
        )
      ],
    );
  }
}
