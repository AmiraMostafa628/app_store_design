import 'package:app_store_task/core/utlis/widgets/custom_button.dart';
import 'package:app_store_task/core/utlis/widgets/custom_text_form_field.dart';
import 'package:app_store_task/core/utlis/widgets/design_scaffold.dart';
import 'package:flutter/material.dart';

class FaqViewBody extends StatelessWidget {
  const FaqViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DesignScaffold(
        title: 'FAQ',
        action: "pop",
        childWidget: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
            child: Column(
               children: [
                 CustomTextFormField(text: 'Select Category',
                     color: const Color(0xffF5F5F5),
                     suffixIcon: Icons.keyboard_arrow_down,
                     textEditingController: TextEditingController() ),
                 const SizedBox(height: 20.0,),
                 CustomTextFormField(text: 'Where do you Deliver?',
                     color: const Color(0xffF3FFF5),
                     suffixIcon: Icons.keyboard_arrow_down,
                     textEditingController: TextEditingController()),
                 const SizedBox(height: 20.0,),
                 CustomTextFormField(text: 'How can I order at SG Grocery?',
                     color: const Color(0xffF3FFF5),
                     suffixIcon: Icons.keyboard_arrow_up,
                     textEditingController: TextEditingController()),
                 const SizedBox(height: 20.0,),
                 Text('Placing an order is very simple. Just register on the SG Grocery website/mobile application, pick your choice of products with a wide range of product selection in the online store and proceed to checkout or just call customer care and place an order. i.e. 1800-123-1947',
                 style: Theme.of(context).textTheme.labelSmall!.copyWith(
                   color: const Color(0xff1B1B1B),
                   fontWeight: FontWeight.w400,
                   height: 1.8
                 ),
                 ),
                 const SizedBox(height: 20.0,),
                 CustomTextFormField(text: 'How do I know at what time I will receive my Delivery?',
                     color: const Color(0xffF3FFF5),
                     suffixIcon: Icons.keyboard_arrow_down,
                     textEditingController: TextEditingController()),
                 const SizedBox(height: 20.0,),
                 CustomTextFormField(text: 'What is minimum order value?',
                     color: const Color(0xffF3FFF5),
                     suffixIcon: Icons.keyboard_arrow_down,
                     textEditingController: TextEditingController()),
                 const SizedBox(height: 20.0,),
                 CustomTextFormField(text: 'What if I want to return something?',
                     color: const Color(0xffF3FFF5),
                     suffixIcon: Icons.keyboard_arrow_down,
                     textEditingController: TextEditingController()),
                 const SizedBox(height: 30.0,),
                 Text("Not Listed your question/query?",
                   style: Theme.of(context).textTheme.displayLarge,
                 ),
                 const SizedBox(height: 20.0,),
                 Container(
                   height: 140,
                   decoration: BoxDecoration(
                     color: const Color(0xffF5F5F5),
                     borderRadius: BorderRadius.circular(12),),
                   child: CustomTextFormField(text: 'Write your Question/Query here',
                     textEditingController: TextEditingController(),
                     color: const Color(0xffF5F5F5),
                   ),
                 ),
                 const SizedBox(height: 30,),
                 SizedBox(
                     width: 200,
                     height: 55,
                     child:  CustomButton(text: 'Submit',
                       borderRadius: BorderRadius.circular(4.0),)),
                 const SizedBox(height: 50,),
          
               ],
            ),
          ),
        ));
  }
}
