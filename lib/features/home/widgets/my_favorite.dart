import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/models/model.dart';
import 'package:app_store_task/core/utlis/widgets/custom_amount_row.dart';
import 'package:app_store_task/core/utlis/widgets/design_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyFavorite extends StatelessWidget {
    MyFavorite({super.key});

  final List <Model> favoriteModel = [
    Model(name: 'Strawberry', image: AssetsManager.strawberry,amount: '(1 kg)',price: '\$4'),
    Model(name: 'Banana', image: AssetsManager.banana,amount: '(1 kg)',price: '\$2'),
    Model(name: 'Kiwifruit', image: AssetsManager.kiwiFruit,amount: '(3 units)',price: '\$4'),
  ];

  @override
  Widget build(BuildContext context) {
    return DesignScaffold(title: 'My Favorite',
      action: "push",
        childWidget: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 12),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
                children: favoriteModel.map((item){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff3c88aa).withOpacity(0.1),
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            )

                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(item.image,width: 100,height: 100,),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(item.name,
                                        style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                          color: const Color(0xff424242),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Icon(FontAwesomeIcons.solidHeart,
                                        color: Color(0xffFF3F3F),),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(item.amount!,
                                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                        color: const Color(0xff787878),
                                        fontWeight: FontWeight.w400
                                    ),

                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(item.price!,
                                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                        fontSize: 18
                                    ),

                                  ),
                                  const CustomAmountRow(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );

                }).toList()
            ),
          ),
        ),);
  }
}
