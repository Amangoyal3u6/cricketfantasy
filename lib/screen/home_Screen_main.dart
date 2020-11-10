import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HomeScreenMain extends StatefulWidget {
  @override
  _HomeScreenMainState createState() => _HomeScreenMainState();
}

class _HomeScreenMainState extends State<HomeScreenMain> {
  @override
  Widget build(BuildContext context) {
    Widget image_Slider = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/images/banner1.jpg'),
          AssetImage('assets/images/banner2.jpg'),
          AssetImage('assets/images/banner2.jpg'),
        ],
      ),
    );
    return Scaffold(
      body: ListView(
        children: [
          image_Slider,
        ],
      ),
    );
  }
}
