import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/models/model.dart';
import 'package:flutter/material.dart';

class ProductsItems extends StatelessWidget {
   ProductsItems({super.key});

  final List <Model> productsModel = [
    Model(name: 'Fortune rice', image: AssetsManager.fortuneRice),
    Model(name: 'Fresh Avocado', image: AssetsManager.freshAvocado),
    Model(name: 'Organic Tomatoes', image: AssetsManager.organicTomatoes),

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: productsModel.map((item){
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                      color: const Color(0xffF2FCF4),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: Image.asset(item.image, fit: BoxFit.contain)),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0,bottom: 12.0,right: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    item.name,
                                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff424242)
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8.0,),
                                Text(
                                  '\$3/kg',
                                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Image.asset(AssetsManager.discount),
                    ],
                  ),
                ),
              );
            },
            ).toList()),
      ),
    );
  }
}

