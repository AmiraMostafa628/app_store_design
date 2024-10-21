import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/models/model.dart';
import 'package:app_store_task/core/utlis/widgets/custom_amount_row.dart';
import 'package:app_store_task/core/utlis/widgets/custom_row_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DetailsViewBody extends StatelessWidget {
   const DetailsViewBody({super.key, required this.fruitModel});

  final Model fruitModel;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: kWhiteColor,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).height *0.25,
                          decoration: const BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                          ),
                          child:const CustomRowHeader(text:'Details', action: "pop",)
          
                        ),
                        const SizedBox(height: 70.0,)
                      ],
                    ),
                    SizedBox(
                      height: 220,
                        width: 220,
                        child: Image.asset(fruitModel.image,fit: BoxFit.contain,)),
                  ],
                ),
                SvgPicture.asset(AssetsManager.swipe),
                const SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(fruitModel.name,
                            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                              fontSize: 28
                            ),
                          ),
                          const Spacer(),
                          const CustomAmountRow()
                        ],
                      ),
                      const SizedBox(height: 12.0,),
                      Text('Special price',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                             fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 12.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(fruitModel.price!,
                            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontSize: 24,
                            ),
                          ),
                          Text('(42% off)',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Text('Description',
                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontSize: 22,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      const SizedBox(height: 10.0,),
                      Text('${fruitModel.name} have less sugar and carbs, and more fiber, protein, potassium, iron, and vitamin K, taking the lead as a healthier variety, although the differences are ever so slight.',
                            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                              color: const Color(0xff9B9B9B),
                              fontWeight: FontWeight.w400
                            ),
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text('Subscribe',
                                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                    fontSize: 16
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
                              padding: const EdgeInsets.all(10),
                              child: Text('Buy Once',
                                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                    fontSize: 16,
                                    color: kPrimaryColor
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Text('Related items',
                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      const SizedBox(height: 25,),
                      RelatedItems(),
                      const SizedBox(height: 25,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RelatedItems extends StatelessWidget {
   RelatedItems({super.key});

  final List <Model> relatedItemsModel = [
    Model(name: 'Pinapple', image: AssetsManager.pinApple,
        containerBackgroundColor: const Color(0xffFFEAD1),
        textBackGroundColor: const Color(0xffFFA83B)),
    Model(name: 'Strawberry', image: AssetsManager.strawberry,
        containerBackgroundColor: const Color(0xffF5D9D9),
        textBackGroundColor: const Color(0xffFF5656)),
    Model(name: 'Grapes', image: AssetsManager.grapes2,
        containerBackgroundColor: const Color(0xffEFF5D2),
        textBackGroundColor: const Color(0xffBAD13A)),
    Model(name: 'Banana', image: AssetsManager.banana,
        containerBackgroundColor: const Color(0xfffde075),
        textBackGroundColor: const Color(0xfffcca14)),
    Model(name: 'Kiwifruit', image: AssetsManager.kiwiFruit,
        containerBackgroundColor: const Color(0xffb7c898),
        textBackGroundColor: const Color(0xffa1b74e)),
    Model(name: 'Watermelon', image: AssetsManager.watermelon,
        containerBackgroundColor: const Color(0xfff38470),
        textBackGroundColor: const Color(0xffda3213)),
    Model(name: 'Orange', image: AssetsManager.orange,
        containerBackgroundColor: const Color(0xfffecb62),
        textBackGroundColor: const Color(0xfff2b114)),
    Model(name: 'Guava', image: AssetsManager.guava,
        containerBackgroundColor: const Color(0xffEFF5D2),
        textBackGroundColor: const Color(0xffBAD13A)),
    Model(name: 'Avocado', image: AssetsManager.avocado,
        containerBackgroundColor: const Color(0xffa7a87b),
        textBackGroundColor: const Color(0xff23450C)),
    Model(name: 'Green Apple', image: AssetsManager.greenApple,
        containerBackgroundColor: const Color(0xffEFF5D2),
        textBackGroundColor: const Color(0xffBAD13A)),


  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: relatedItemsModel.map((item){
              return Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Card(
                  color: item.containerBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                          width: 110,
                          height: 100,
                          child: Image.asset(item.image, fit: BoxFit.contain)),
                      SvgPicture.asset(AssetsManager.add),
                      Container(
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                          color: item.textBackGroundColor,
                          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),
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
