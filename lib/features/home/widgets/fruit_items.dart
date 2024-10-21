import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/models/model.dart';
import 'package:app_store_task/core/utlis/widgets/custom_add_icon.dart';
import 'package:flutter/material.dart';

class FruitItems extends StatelessWidget {
  FruitItems({super.key});
  final List <Model> fruitItemsModel = [
    Model(name: 'Strawberry', image: AssetsManager.strawberry,amount: '1 kg',price: '\$4'),
    Model(name: 'Banana', image: AssetsManager.banana,amount: '1 kg',price: '\$2'),
    Model(name: 'Kiwifruit', image: AssetsManager.kiwiFruit,amount: '1 kg',price: '\$4'),
    Model(name: 'Orange', image: AssetsManager.orange,amount: '1 kg ',price: '\$2'),

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: fruitItemsModel.map((item){
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
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
                    ConstrainedBox(
                      constraints: const BoxConstraints(minWidth: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  item.name,
                                  style: Theme.of(context).textTheme.headlineSmall
                              ),
                              Text(
                                item.amount!,
                                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff838383),
                                ),
                              ),
                              const SizedBox(height: 5.0,),
                              Text(
                                item.price!,
                                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const CustomAddIcon(),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          ).toList()),
    );
  }
}