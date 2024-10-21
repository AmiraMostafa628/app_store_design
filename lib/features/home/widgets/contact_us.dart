import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/widgets/custom_button.dart';
import 'package:app_store_task/core/utlis/widgets/custom_text_form_field.dart';
import 'package:app_store_task/core/utlis/widgets/design_scaffold.dart';
import 'package:app_store_task/features/home/widgets/contact_details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return DesignScaffold(title: "Contact Us",
        action: "pop",
        childWidget: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  color: kWhiteColor,
                  elevation: 0.5,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Text("Get In Touch !",
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        const SizedBox(height: 10.0,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('One of our workspace experts will reach out to you based on your communication preferences.',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                color: const Color(0xff989898),
                                fontWeight: FontWeight.w400
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25.0,),
                const ContactDetails(title: 'Your Details',),
                Container(
                 height: 140,
                 decoration: BoxDecoration(
                   color: const Color(0xffF5F5F5),
                   borderRadius: BorderRadius.circular(12),),
                 child: CustomTextFormField(text: 'Additional Info',
                     textEditingController: TextEditingController(),
                   color: const Color(0xffF5F5F5),
                 ),
               ),
                const SizedBox(height: 25.0,),
                SizedBox(
                width: 170,
                  child:  CustomButton(text: 'Send Message',fontSize: 14,
                    borderRadius: BorderRadius.circular(4.0),)),
                const SizedBox(height: 25.0,),
                const ContactInfo(title: '2464 Royal Ln. Mesa, New Jersey 45463',
                  iconData: Icons.location_on,),
                const SizedBox(height: 25.0,),
                const ContactInfo(title: '+1 (773) 600-4875 , +1 (773) 600-4866',
                  iconData: Icons.phone,),
                const SizedBox(height: 25.0,),
                const ContactInfo(title: 'sggrocery@gmail.com',
                  iconData: FontAwesomeIcons.envelope,),
                const SizedBox(height: 50.0,),

              ],
            ),
          ),
        ));
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key, required this.title, required this.iconData});

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 65,
      color: const Color(0xffF3FFF5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData,color: kPrimaryColor,),
          const SizedBox(width: 10.0,),
          Text(title,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: kPrimaryColor,
              fontSize: 12
            ),
          ),
        ],
      ),
    );
  }
}

