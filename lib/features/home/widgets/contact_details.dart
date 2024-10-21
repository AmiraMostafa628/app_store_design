import 'package:app_store_task/core/utlis/widgets/custom_text_form_field.dart';
import 'package:app_store_task/features/home/widgets/phone_number_widget.dart';
import 'package:flutter/material.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({super.key, required this.title});

  final String title;


  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var lastNameController = TextEditingController();
    var emailController = TextEditingController();
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
            color: const Color(0xff000000),
          ),
        ),
        const SizedBox(height: 30,),
        CustomTextFormField(
          text: "   First Name",
          textEditingController: nameController,
          color: const Color(0xffF5F5F5),
        ),
        const SizedBox(height: 15,),
        CustomTextFormField(
          text: "   Last Name",
          textEditingController: lastNameController,
          color: const Color(0xffF5F5F5),
        ),
        const SizedBox(height: 15,),
        CustomTextFormField(
          text: "    Email",
          textEditingController: emailController,
          color: const Color(0xffF5F5F5),
        ),
        const SizedBox(height: 15,),
        const PhoneNumberWidget(),
        const SizedBox(height: 30,),
      ],
    );
  }
}
