import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/go_router.dart';
import 'package:app_store_task/core/utlis/widgets/design_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class AboutViewBody extends StatelessWidget {
   const AboutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DesignScaffold(title: "About",action: "pop",
      childWidget: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Image.asset(AssetsManager.aboutImage,),
            const SizedBox(height: 20,),
            Text('What began little, with a solitary idea of a store that provides rebate and the basic thought of moving more for less, has become in the course of the last 10 years into the biggest retailer in this whole country.\n\nEvery week, about 265 million clients and individuals visit our in excess of 13,200 stores under 55 standards in 27 nations and eCommerce sites in 4 nations. With financial year 2018 income of \$500.3 billion, ‘Organization Name’ utilizes over 2.2 million partners around the world.\n\nSG Grocery keeps on being an innovator in support ability, corporate magnanimity and work opportunity. It’s everything part of our relentless promise to making openings and conveying an incentive to clients and networks the world over.',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: const Color(0xff5C5C5C),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  wordSpacing: 1.5
              ),
            ),
            const SizedBox(height: 30,),
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 50,),
                    Container(
                      width: double.infinity,
                      height: 480,
                      color: const Color(0xffFFF2F0),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AssetsManager.aboutImage_2),
                    Text('~ Why Choose us? ~',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 20),
                    ),
                    const SizedBox(height: 20.0,),
                    Text('We do not buy from the open market & traders.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: const Color(0xff434343),
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text('We would like to give the best to our valuable customer that’s why our experts check quality of every products before we deliver it to you and promises to do further to keep faith constant.',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: const Color(0xff7E7E7E),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(AssetsManager.organicFood),
                                  const SizedBox(width: 5.0,),
                                  Text('100 % Organic Food',
                                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                        fontSize: 13),
                                  ),

                                ],
                              ),
                              const SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  SvgPicture.asset(AssetsManager.service),
                                  const SizedBox(width: 5.0,),
                                  Text('24/7 Service',
                                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                          fontSize: 13
                                      )
                                  ),

                                ],
                              ),

                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(AssetsManager.fastDelivery),
                                  const SizedBox(width: 5.0,),
                                  Text('Fast Delivery',
                                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                        fontSize: 13),
                                  ),

                                ],
                              ),
                              const SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  SvgPicture.asset(AssetsManager.securePayment),
                                  const SizedBox(width: 5.0,),
                                  Text('Secure Payment',
                                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                          fontSize: 13
                                      )
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap:(){
                              GoRouter.of(context).push(AppRouter.kPrivacy);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  color: const Color(0xffF3FFF5),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Row(
                                children: [
                                  Text('Privacy Policy',
                                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_ios,size: 13,color: kBlackColor,),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          GestureDetector(
                            onTap:(){
                              GoRouter.of(context).push(AppRouter.kTerms);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                  color: const Color(0xffF3FFF5),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Row(
                                children: [
                                  Text('Terms and services',
                                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                      color: const Color(0xff707070),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.arrow_forward_ios,size: 13,color: kBlackColor,),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),

              ],
            )
          ],
        ),
      ),
    ),);
  }
}
