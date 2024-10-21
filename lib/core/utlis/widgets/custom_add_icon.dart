import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAddIcon extends StatelessWidget {
  const CustomAddIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SvgPicture.asset(AssetsManager.icon, width: 24,
          height: 24,),
        const Center(child: Text('+',style: TextStyle(fontSize: 16
            ,color: kWhiteColor),))

      ],
    );
  }
}
