import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/models/model.dart';
import 'package:flutter/material.dart';

class DealsOfTheWeek extends StatelessWidget {
   DealsOfTheWeek({super.key});
  final List <Model> dealsOFWeekModel = [
    Model(name: 'Soft drinks', image: AssetsManager.softDrinks,price: 'Up to 40% off'),
    Model(name: 'Tea', image: AssetsManager.tea,price: 'Up to 30% off'),
    Model(name: 'Bath', image: AssetsManager.bath,price: 'Min 20% of'),

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: dealsOFWeekModel.map((item){
              return Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10.0),
                  decoration: BoxDecoration(
                      color: const Color(0xffF2FCF4),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                          child: SizedBox(
                            width: 100,
                            height: 100,
                              child: Image.asset(item.image, fit: BoxFit.contain))),
                      const SizedBox(height: 8),
                      Center(
                        child: Text(
                          item.name,
                          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              color: const Color(0xff424242)
                          ),
                        ),
                      ),
                      Text(
                        item.price!,
                        style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 12,
                        ),
                      )
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

