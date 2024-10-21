import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/models/model.dart';
import 'package:flutter/material.dart';

class CategoriesItems extends StatelessWidget {
   CategoriesItems({super.key});

   final List <Model> categoriesModel = [
       Model(name: 'Groceries', image: AssetsManager.groceries),
       Model(name: 'Vegetables', image: AssetsManager.vegetables),
       Model(name: 'Fruits', image: AssetsManager.fruits),
       Model(name: 'Beverages', image: AssetsManager.beverages),

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categoriesModel.map((item){
            return Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Card(
                color: const Color(0xffF2FCF4),
                child: Column(
                  children: [
                    Image.asset(item.image, fit: BoxFit.contain),
                    const SizedBox(height: 8),

                    Container(
                      width: 100,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),
                      ),
                      child: Center(
                        child: Text(
                          item.name,
                          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontSize: 12,
                        ),
                        ),
                      ),
                    ),
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



