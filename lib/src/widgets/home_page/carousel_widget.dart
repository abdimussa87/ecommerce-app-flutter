import "package:flutter/material.dart";
import 'package:carousel_pro/carousel_pro.dart';

class CarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Carousel(
        images: [
          AssetImage("assets/images/c1.jpg"),
          AssetImage("assets/images/IMG_1266.JPG"),
          AssetImage("assets/images/m1.jpeg"),
          AssetImage("assets/images/m2.jpg"),
          AssetImage("assets/images/w1.jpeg"),
          AssetImage("assets/images/w3.jpeg"),
          AssetImage("assets/images/w4.jpeg"),
        ],
        autoplay: false,
        dotSize: 4,
        indicatorBgPadding: 2,
        boxFit: BoxFit.cover,
        animationCurve:Curves.fastOutSlowIn,
      ),
    );
  }
}
