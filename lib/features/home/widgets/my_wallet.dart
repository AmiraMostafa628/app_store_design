import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/widgets/design_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return DesignScaffold(
        action: "pop",
        title: 'My Wallet',
        childWidget: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("My Balance",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 15.0,),
              Text('\$20',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text('Use to pay 100% on any orders',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: const Color(0xff989898),
                  fontWeight: FontWeight.w400
                ),

              ),
              const SizedBox(height: 25.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: SvgPicture.asset(AssetsManager.divider),
                  ),
                  const SizedBox(width: 10.0,),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BalanceInfo(date: '17 Oct, 2021',title: 'Cashback Received',
                          subTitle: 'Transaction Id : 25917892598342',price: '\$2',
                        ),
                        SizedBox(height: 10.0,),
                        BalanceInfo(date: '12 Oct, 2021',title: 'Spent on order',
                          subTitle: 'Transaction Id : 23423423245342',price: '\$5',color: Color(0xffEC1313),
                        ),
                        SizedBox(height: 10.0,),
                        BalanceInfo(date: '05 Sept, 2021',title: 'Spent on order',
                          subTitle: 'Transaction Id :23289282638462',price: '\$3',
                        ),

                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class BalanceInfo extends StatelessWidget {
  const BalanceInfo({super.key, required this.date, required this.title,
    required this.subTitle, required this.price, this.color});

  final String date;
  final String title;
  final String subTitle;
  final String price;
  final Color? color;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(date,
          style :Theme.of(context).textTheme.labelMedium!.copyWith(
              color: const Color(0xff000000),
              fontWeight: FontWeight.w500
          ),
        ),
        SizedBox(
          height: 120,
          child: Card(
            color: kWhiteColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ListTile(
                  title: Text(title,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(subTitle,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.2,
                          color: const Color(0xff878787)
                      ),
                    ),
                  ),
                  trailing: Text(price,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: color??kPrimaryColor
                    ),
                  ),
                ),
              ),

            ),
          ),
        ),
      ],
    );
  }
}

