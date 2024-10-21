import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlidingImage extends StatelessWidget {
  const SlidingImage({
  super.key,
  required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context,_){
        return SlideTransition(
          position: slidingAnimation,
          child: SvgPicture.asset(AssetsManager.logoImage),
        );
      },
    );
  }
}