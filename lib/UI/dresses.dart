import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vero/UI/widgets.dart';

class Dresses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dresses'),
      ),
      body: Center(
          child: CarouselSlider.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int itemIndex) =>
            DressItem(itemIndex),
        options: CarouselOptions(
          height: 800,
          viewportFraction: 0.85,
          enlargeCenterPage: true,
        ),
      )),
    );
  }
}
