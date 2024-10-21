import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/models/model.dart';
import 'package:app_store_task/core/utlis/widgets/custom_add_icon.dart';
import 'package:flutter/material.dart';

class BakeryItems extends StatelessWidget {
   BakeryItems({super.key});
  final List <Model> bakeryItemsModel = [
    Model(name: 'Parle Rusk', image: AssetsManager.parleRusk,amount: '500 g',price: '\$3'),
    Model(name: 'Choco muffin', image: AssetsManager.chocoMuffin,amount: '6 pcs.',price: '\$4'),
    Model(name: 'Harshey’s Bar', image: AssetsManager.harsheysBar,amount: '43 g',price: '\$2'),
    Model(name: 'Bread', image: AssetsManager.bread,amount: '500 g ',price: '\$5'),

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: bakeryItemsModel.map((item){
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