import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/go_router.dart';
import 'package:app_store_task/core/utlis/widgets/custom_button.dart';
import 'package:app_store_task/core/utlis/widgets/custom_text_form_field.dart';
import 'package:app_store_task/core/utlis/widgets/design_scaffold.dart';
import 'package:app_store_task/features/home/widgets/Add_new_adddress.dart';
import 'package:app_store_task/features/home/widgets/address_items.dart';
import 'package:app_store_task/features/home/widgets/card_list_view.dart';
import 'package:app_store_task/features/home/widgets/contact_details.dart';
import 'package:app_store_task/features/home/widgets/phone_number_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'payment_radio_button.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return DesignScaffold(
        title: 'Payment',
        action: "pop",
        childWidget: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ContactDetails(title: "Contact Details",),
                Text('Choose Delivery Address',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: const Color(0xff000000),
                  ),
                ),
                const SizedBox(height: 20,),
                const AddressItems(),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    showModalBottomSheet(
                      context: context, // Makes the background grey
                      builder: (BuildContext context) {
                        return Container(
                          decoration: const BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                          ),

                          child:  SingleChildScrollView(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap:(){
                                    GoRouter.of(context).pop();
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 20.0,right: 30),
                                    child: Align(
                                      alignment: AlignmentDirectional.topEnd,
                                        child: Icon(FontAwesomeIcons.circleXmark,)),
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                Text('Add New Address',
                                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                      color: kPrimaryColor
                                  ),
                                ),
                                const AddNewAddressBody(),

                            ],),
                          ),
                        );
                      },
                    );

                  },
                  child: const AddRow(title: "Add New Address",
                      align:MainAxisAlignment.end),
                ),
                const SizedBox(height: 20,),
                Text('Do you have a promo code / Coupon ?',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: const Color(0xff000000),
                    fontSize: 16
                  ),
                ),
                const SizedBox(height: 20,),
                CustomTextFormField(
                  text: "Enter your code",
                  textEditingController: TextEditingController(),
                  color: const Color(0xffF5F5F5),
                  prefixIcon: AssetsManager.code,
                ),
                const SizedBox(height: 20,),
                const Center(child: SizedBox(
                  width: 200,
                  child: CustomButton(text: 'Apply Now',height: 60,),),),
                const SizedBox(height: 20,),
                Text('Choose payment method',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: const Color(0xff424242),
                      fontSize: 16
                  ),
                ),
                const SizedBox(height: 20,),
                const PaymentRadioButton(),
                const SizedBox(height: 5,),
                const AddRow(title: "Add New Card",align:MainAxisAlignment.end),
                const SizedBox(height: 20,),
                const PaymentValue(),
                const SizedBox(height: 100,),


              ],
            ),
          ),
        ));
  }

}

class PaymentValue extends StatelessWidget {
  const PaymentValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          CardListView(),
          const SizedBox(height: 20,),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 115,
                  decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12))
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Enter CVV',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: kWhiteColor
                        ),
      
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: 'e.g. 123',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffBCBCBC),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12)),
                            borderSide: BorderSide(
                              color: kPrimaryColor,
      
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12)),
                            borderSide: BorderSide(
                              color: kPrimaryColor,
      
                            )
                        )
      
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 22,),
          SizedBox(
              width: 200,
              child: CustomButton(text: 'Pay \$9.97',height: 60,onPressed: (){
                GoRouter.of(context).push(AppRouter.kWallet);
              },)),
          const SizedBox(height: 22,),
          RichText(
            text: TextSpan(
              text: 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our ',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: const Color(0xffADADAD),
                  fontWeight: FontWeight.w400
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'privacy policy.',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(color:kPrimaryColor,),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}

class AddRow extends StatelessWidget {
  const AddRow({super.key, required this.title, required this.align});

  final String title;
  final MainAxisAlignment align;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: align,
      children: [
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                  color: kPrimaryColor,
                  width: 2.0
              )

          ),
          child: const Center(child: Text('+',style: TextStyle(
              fontSize: 15,
              color: kPrimaryColor),)),

        ),
        const SizedBox(width: 6.0,),
        Text(title,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: kPrimaryColor
          ),
        ),
      ],
    );
  }
}





