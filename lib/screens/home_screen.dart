import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:mediaquery_b/widgets/horizontal/sidebar.dart';
import 'package:mediaquery_b/widgets/image_list.dart';
import 'package:mediaquery_b/widgets/vertical/content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isHorizontal(BuildContext context) =>
        MediaQuery.of(context).size.width >= 500;

    bool isVertical(BuildContext context) =>
        MediaQuery.of(context).size.width < 500;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tienda virtual"),
      ),
      body: Row(children: [
        if (isHorizontal(context)) const SideBar(),
        if (isHorizontal(context)) const CarrouselIMG(),
        if (isVertical(context)) const Content()
      ]),
    );
  }
}

class CarrouselIMG extends StatelessWidget {
  const CarrouselIMG({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BannerCarousel(
          banners: listBanners,
          customizedIndicators: IndicatorModel.animation(
              width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
          height: 120,
          activeColor: Colors.amberAccent,
          disableColor: Colors.white,
          animation: true,
          borderRadius: 10,
          width: 250,
          indicatorBottom: false,
        ),
      ],
    );
  }
}
