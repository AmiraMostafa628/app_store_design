import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/go_router.dart';
import 'package:app_store_task/core/utlis/models/model.dart';
import 'package:app_store_task/core/utlis/widgets/custom_row_header.dart';
import 'package:app_store_task/core/utlis/widgets/design_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class FruitViewBody extends StatelessWidget {
   FruitViewBody({super.key});
  final List <Model> fruitModel = [
    Model(name: 'Strawberry', image: AssetsManager.strawberry,amount: '(1 kg)',price: '\$4'),
    Model(name: 'Banana', image: AssetsManager.banana,amount: '(1 kg)',price: '\$2'),
    Model(name: 'Kiwifruit', image: AssetsManager.kiwiFruit,amount: '(3 units)',price: '\$4'),
    Model(name: 'Grapes', image: AssetsManager.grapes,amount: '(1 kg)',price: '\$4'),
    Model(name: 'Watermelon', image: AssetsManager.watermelon,amount: '(1 kg)',price: '\$2'),
    Model(name: 'Orange', image: AssetsManager.orange,amount: '(1 kg)',price: '\$2'),
    Model(name: 'Guava', image: AssetsManager.guava,amount: '(1 kg)',price: '\$2'),
    Model(name: 'Avocado', image: AssetsManager.avocado,amount: '(2 pcs.)',price: '\$2'),
    Model(name: 'Green Apple', image: AssetsManager.greenApple,amount: '(1 kg)',price: '\$2'),
    Model(name: 'Pinapple', image: AssetsManager.pinApple,amount: '(1 kg)',price: '\$2'),

  ];

  @override
  Widget build(BuildContext context) {
    return DesignScaffold(title: 'Fruits',
        action: "pop",
        childWidget:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 12),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 0.73,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            children: List.generate(fruitModel.length,(index){
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kDetailsView,extra: fruitModel[index]);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                    decoration: BoxDecoration(
                        color: const Color(0xffF2FCF4),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(FontAwesomeIcons.heart,color: Colors.red,size: 22,),
                        Center(
                            child: SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.asset(fruitModel[index].image,
                                    fit: BoxFit.contain))),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                    fruitModel[index].name,
                                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                        color: const Color(0xff6E6E6E),
                                        fontSize: 16
                                    )
                                ),
                                const SizedBox(width: 5.0,),
                                Text(
                                  fruitModel[index].amount!,
                                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff838383),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 5.0,),
                            Row(
                              children: [
                                Text(
                                  fruitModel[index].price!,
                                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                      fontSize: 15,
                                      color: kPrimaryColor
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 22,
                                  height: 22,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      border: Border.all(
                                          color: kPrimaryColor,
                                          width: 2.0
                                      )

                                  ),
                                  child: const Center(child: Text('-',style: TextStyle(
                                      fontSize: 12,
                                      color: kPrimaryColor),)),

                                ),
                                const SizedBox(width:7.0,),
                                Text("1",style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: kPrimaryColor
                                ),),
                                const SizedBox(width: 10.0,),
                                const CircleAvatar(
                                  radius: 13,
                                  backgroundColor: kPrimaryColor,
                                  child: Center(child: Text('+',style: TextStyle(
                                      fontSize: 18
                                      ,color: kWhiteColor),)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 8.0),
                                    child: Text('Subscribe',
                                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                          fontSize: 11
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: kPrimaryColor
                                      ),
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 8.0),
                                    child: Text('Buy Once',
                                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                          fontSize: 11,
                                          color: kPrimaryColor
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15.0,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ));
  }
}

