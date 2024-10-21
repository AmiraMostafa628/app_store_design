import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/go_router.dart';
import 'package:app_store_task/core/utlis/models/model.dart';
import 'package:app_store_task/core/utlis/widgets/custom_amount_row.dart';
import 'package:app_store_task/features/home/widgets/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';


class MyCart extends StatelessWidget {
   MyCart({super.key});
  
  final List<Model> cartModel=[
    Model(name: 'Shimla Apple', image: AssetsManager.shimlaApple,
        amount: '1 kg',price: '\$2',oldPrice: '\$3.25'),
    Model(name: 'Basmati Rice', image: AssetsManager.basmatiRice,
        amount: '1 kg',price: '\$4',oldPrice: '\$8'),
    Model(name: 'Organic Tomatoes', image: AssetsManager.tomatoes,
        amount: '1 kg',price: '\$1',oldPrice: '\$2')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
                 child: Row(
                   children: [
                     InkWell(
                         onTap: (){
                            GoRouter.of(context).push(AppRouter.kHomeView);
                         },
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Image.asset(AssetsManager.arrowBack),
                         )),
                     Expanded(
                       child: Center(
                         child: Text("My Cart",
                             style: Theme.of(context).textTheme.headlineMedium
                         ),
                       ),
                     )
                   ],
                 ),
               ),
               const SizedBox(
                 height: 20.0,
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
                 child: Row(
                   children: [
                     Text('Tomorrow, 7 AM - 9 PM',
                       style: Theme.of(context).textTheme.displaySmall!.copyWith(
                         fontSize: 20,
                         color: const Color(0xff424242),
                       ),
                     ),
                     const SizedBox(width: 7.0,),
                     SvgPicture.asset(AssetsManager.dropDownArrow,)
                   ],
                 ),
               ),
               const SizedBox(
                 height: 30.0,
               ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                            children: cartModel.map((item){
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
                                                  const Icon(Icons.clear),
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
                                              Row(
                                                children: [
                                                  Text(item.price!,
                                                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                                        fontSize: 18
                                                    ),
                  
                                                  ),
                                                  const SizedBox(width: 15.0,),
                                                  Text(item.oldPrice!,
                                                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                                      color: const Color(0xffB4B4B4),
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 16,
                                                      decoration: TextDecoration.lineThrough,
                                                      decorationColor: const Color(0xffB4B4B4),
                                                      decorationThickness: .5,
                  
                  
                                                    ),
                  
                                                  ),
                                                ],
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: SvgPicture.asset(AssetsManager.offer),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: Text('Promo code can be applied on payment screen',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: const Color(0xff74CA82).withOpacity(.6),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25,),
                      PaymentMethod(),

                    ],
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


