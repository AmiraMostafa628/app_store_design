import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/models/model.dart';
import 'package:app_store_task/core/utlis/widgets/custom_add_icon.dart';
import 'package:flutter/material.dart';

class GroceriesItems extends StatelessWidget {
  GroceriesItems({super.key});
  final List <Model> groceriesModel = [
    Model(name: 'Jaggery Powder', image: AssetsManager.jaggeryPowder,amount: '500 g',price: '\$3'),
    Model(name: 'TATA Arhar Dal', image: AssetsManager.tata,amount: '1 kg',price: '\$4'),
    Model(name: 'Saffola gold oil', image: AssetsManager.oil,amount: '5 Ltr + 1 ltr',price: '\$20'),
    Model(name: 'Saffola gold oil', image: AssetsManager.goldOil,amount: '3 Ltr ',price: '\$18'),

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: groceriesModel.map((item){
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
                    const SizedBox(height: 8.0,),
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

                       ],),
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
