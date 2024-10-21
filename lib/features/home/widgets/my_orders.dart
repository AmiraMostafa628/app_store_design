import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/widgets/custom_button.dart';
import 'package:app_store_task/core/utlis/widgets/design_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return  DesignScaffold(title: "My Orders",
        action: "pop",
        childWidget:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Order History",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SvgPicture.asset(AssetsManager.divider2),
                  ),
                 const SizedBox(width: 10.0,),
                  Expanded(
                   child: Column(
                     children: [
                       const OrderInfo(image: AssetsManager.order1,title: 'Arrives Tomorrow',
                         subTitle: '7 AM - PM',),
                       const SizedBox(height: 15.0,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Flexible(
                             child: CustomButton(text: 'View order details',
                               textColor: kPrimaryColor,backgroundColor: kWhiteColor,fontSize: 14,
                               borderRadius: BorderRadius.circular(4)),
                           ),
                           CustomButton(text: 'Track Order',fontSize: 14,
                             borderRadius: BorderRadius.circular(4),
                           ),
                         ],
                       ),
                       const SizedBox(height: 15.0,),
                       const CustomOrder(title1: 'Edit Order',title2: 'Get Invoice',),
                       const SizedBox(height: 15.0,),
                       const OrderInfo(image: AssetsManager.order2,title: 'Delivered on 23 oct',),
                       const SizedBox(height: 15.0,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Flexible(
                             child: CustomButton(text: 'View order details',
                                 textColor: kPrimaryColor,backgroundColor: kWhiteColor,fontSize: 14,
                                 borderRadius: BorderRadius.circular(4)),
                           ),
                           Text('Get Invoice',
                             style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                 decoration: TextDecoration.underline,
                                 decorationColor: kPrimaryColor,
                                 fontSize: 14
                             ),
                           ),
                         ],
                       ),
                       const SizedBox(height: 15.0,),
                       const OrderInfo(image: AssetsManager.order3,title: 'Delivered on 15 oct',),
                       const SizedBox(height: 15.0,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Flexible(
                             child: CustomButton(text: 'View order details',
                                 textColor: kPrimaryColor,backgroundColor: kWhiteColor,fontSize: 14,
                                 borderRadius: BorderRadius.circular(4)),
                           ),
                           Text('Get Invoice',
                             style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                 decoration: TextDecoration.underline,
                                 decorationColor: kPrimaryColor,
                                 fontSize: 14
                             ),
                           ),
                         ],
                       ),


                     ],
                   ),
                 )
                ],
              )

            ],
          ),
        ));
  }
}

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key, required this.image, required this.title,this.subTitle,});

  final String title;
  final String? subTitle;
  final String image;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        color: kWhiteColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ListTile(
              leading: Image.asset(image,width: 100,height: 100,),
              title: Text(title,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                ),
              ),
              subtitle: subTitle!=null? Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(subTitle!,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.w400,
                  ),
                ),
              ):null,
            ),
          ),

        ),
      ),
    );
  }
}

class CustomOrder extends StatelessWidget {
  const CustomOrder({super.key, required this.title1, required this.title2});

  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title1,
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
          decoration: TextDecoration.underline,
          decorationColor: kPrimaryColor,
          fontSize: 14
        ),
      ),
        Text(title2,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
              decoration: TextDecoration.underline,
              decorationColor: kPrimaryColor,
              fontSize: 14
          ),
        ),
    ],);
  }
}
