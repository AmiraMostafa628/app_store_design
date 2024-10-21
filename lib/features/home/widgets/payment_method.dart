import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/go_router.dart';
import 'package:app_store_task/core/utlis/models/listTile_model.dart';
import 'package:app_store_task/core/utlis/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentMethod extends StatelessWidget {
  PaymentMethod({super.key});

  final List<ListTileModel> listTileModel =[
    ListTileModel(title: 'Total MRP', price: '\$9.97'),
    ListTileModel(title: 'Discount', price: '\$0.00'),
    ListTileModel(title: 'Shipping Charges', price: 'Free'),
    ListTileModel(title: 'Total', price: '\$ 9.97'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('Payment details',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w400
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff3c88aa).withOpacity(0.1),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  )

                ]
            ),
            child: Column(
              children: listTileModel.asMap().entries.map((entry){
                int index = entry.key;
                var item = entry.value;
                return index != listTileModel.length-1?
                Column(
                  children: [
                    SizedBox(
                      height:40,
                      child: ListTile(
                        title: Text(item.title,
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                              color: const Color(0xff9B9B9B),
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        trailing: Text(item.price,
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                              color: const Color(0xff9B9B9B),
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                    ),
                    index != listTileModel.length-2 ?
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(height: 10, color: Color(0xffF4F4F4),),
                    ):const SizedBox(height: 10.0,),
                  ],
                ):
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffDCFFE2),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                  child: SizedBox(
                    height:55,
                    child: ListTile(
                      title: Text(item.title,
                        style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: const Color(0xff434343),
                        ),
                      ),
                      trailing: Text(item.price,
                        style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: const Color(0xff434343),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(child: SizedBox(
          width: 200,
            child: CustomButton(text: 'Checkout',height: 60,
              onPressed: (){
              GoRouter.of(context).push(AppRouter.kPaymentView);
              },),),),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}