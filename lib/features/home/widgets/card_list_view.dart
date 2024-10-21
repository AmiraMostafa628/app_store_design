import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:flutter/material.dart';

class CardListView extends StatelessWidget {
   CardListView({super.key});

  final List<String> image =[AssetsManager.card1,AssetsManager.card2];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: image.length,
          itemBuilder: (context,index){
            return Image.asset(image[index],fit: BoxFit.contain,);
          }),
    );
  }
}