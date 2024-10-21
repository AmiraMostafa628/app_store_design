import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/models/model.dart';
import 'package:app_store_task/core/utlis/widgets/custom_row_header.dart';
import 'package:app_store_task/features/home/widgets/drop_down_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MySubscriptionViewBody extends StatelessWidget {
  MySubscriptionViewBody({super.key});

  final List<Model> itemModel = [
    Model(
        name: 'Amul Gold Milk',
        image: AssetsManager.amul_gold_milk,
        amount: '500 ml',
        price: '\$2',
        Qty: 'Qty : 2'),
    Model(
        name: 'Amul Buttermilk',
        image: AssetsManager.amulButterMilk,
        amount: '500 ml',
        price: '\$1',
        Qty: 'Qty : 3'),
    Model(
        name: 'Banana',
        image: AssetsManager.banana,
        amount: '1 kg',
        price: '\$2',
        Qty: 'Qty : 1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: kPrimaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomRowHeader(
                action: "pop",
                text: 'My Subscription',
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: DropDownButton(),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Today',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: const Color(0xff424242)),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '(23 September 2021)',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      color: const Color(0xff737373),
                                      fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset(AssetsManager.calender),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Column(
                                    children: itemModel.map((item) {
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
                                              ]),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8.0,top: 14.0),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  item.image,
                                                  width: 100,
                                                  height: 100,
                                                ),
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
                                                          Text(
                                                            item.name,
                                                            style: Theme.of(context).textTheme.displaySmall!
                                                                .copyWith(
                                                              color: const Color(0xff424242),
                                                              fontWeight: FontWeight.w400,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(right: 15.0),
                                                            child: Text(
                                                              item.Qty!,
                                                              style: Theme.of(context).textTheme.labelSmall!
                                                                  .copyWith(
                                                                  color: const Color(0xff787878),
                                                                  fontWeight: FontWeight.w400),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 8.0,
                                                      ),
                                                      Text(
                                                        item.amount!,
                                                        style: Theme.of(context).textTheme.labelSmall!
                                                            .copyWith(
                                                            color: const Color(0xff787878),
                                                            fontWeight: FontWeight.w400),
                                                      ),
                                                      const SizedBox(
                                                        height: 8.0,
                                                      ),
                                                      Text(
                                                        item.price!,
                                                        style: Theme.of(context).textTheme.displayLarge!
                                                            .copyWith(fontSize: 18),
                                                      ),
                                                      Align(
                                                          alignment: AlignmentDirectional.bottomEnd,
                                                          child: SvgPicture.asset(AssetsManager.days)),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList()),
                                const SizedBox(height: 20,),
                                Center(child: SvgPicture.asset(AssetsManager.illustration)),
                                const SizedBox(height: 20,),
                                Text('Excited to serve you the best quality',
                                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                    color: const Color(0xff7B7979),
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                                const SizedBox(height: 40,),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
