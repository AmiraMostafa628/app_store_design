import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarousalSliderWidget extends StatefulWidget {
  const CarousalSliderWidget({super.key});

  @override
  State<CarousalSliderWidget> createState() => _CarousalSliderWidgetState();
}

class _CarousalSliderWidgetState extends State<CarousalSliderWidget> {
  final List<String> images= [AssetsManager.advertisement1,
    AssetsManager.advertisement1,AssetsManager.advertisement1];

  final carouselController = CarouselSliderController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CarouselSlider(
              carouselController: carouselController,
              items:images.map((image) => SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: Image.asset(image,fit: BoxFit.fill,),
                ),
              )).toList(
              ),
              options: CarouselOptions(
                height: 180.0,
                initialPage: 0,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(seconds: 1),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: images.length,
          effect: const ExpandingDotsEffect(
            dotHeight: 7.0,
            dotWidth: 20.0,
            expansionFactor: 1.5,
            spacing: 4.0,
            activeDotColor: kPrimaryColor,
            dotColor: Color(0xffCFCFCF),
          ),
        ),

      ],
    );
  }
}
