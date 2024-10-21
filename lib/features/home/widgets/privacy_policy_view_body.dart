import 'package:app_store_task/core/utlis/widgets/body_Text.dart';
import 'package:app_store_task/core/utlis/widgets/design_scaffold.dart';
import 'package:app_store_task/core/utlis/widgets/title_text.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyViewBody extends StatelessWidget {
  const PrivacyPolicyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DesignScaffold(
        title: "Privacy Policy",
        action: "pop",
        childWidget: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const TitleText(title: 'Privacy Policy',),
                Center(
                  child: Text('Last updated on Nov,2021',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: const Color(0xff838383),
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                const BodyText(title: 'SG Grocery is committed to protecting your privacy. This Privacy Policy explains our data processing practices and your options regarding the ways in which your personal data is used. If you have concerning your personal information or any questions please contact us to given email at customercare@SGGrocery.us please note that the practices of SG grocery with respect to data collected and used by Grocery Factory only in connection with this website with links to this policy are governed by Grocery Factory privacy policy ("Privacy Policy") as amended from time to time and not the privacy policy in effect at the time the data was collected. Please regularly review our Privacy Policy. If you have objections to the Privacy Policy, you can immediately contact us.'),
                const TitleText(title: 'Information collected:'),
                const SizedBox(height: 20,),
                const BodyText(title: 'SG grocery collects the details provided by you on registration together with information we learn about you from your use of our service and your visits to our website. We also collect information about the transactions you undertake including details of payment cards used. We may collect additional information in connectio n with your participation in any promotions or competitions offered by us and information you provide when giving us feedback or completing profile forms. We also monitor customer traffic patterns and site usage which enables us to improve the services we provide.\n\nUse of your information and your preferences: We will use your information to provide and personalize our service. We will also use your contact details to regularly communicate with you. We may use your information to send you to offer and news from Grocery Factory and services, for this we may contact you by post, email, or telephone for these purposes. We like to hear your views to help us improve our service.'),
                const TitleText(title: 'Use of your information and your preferences:'),
                const BodyText(title: 'We will use your information to provide and personalize our service. We will also use your contact details to regularly communicate with you. We may use your information to send you to offer and news from SG Groecery and services, for this we may contact you by post, email, or telephone for these purposes. We like to hear your views to help us improve our service.'),
                const TitleText(title: 'Legal Disclaimer:'),
                const BodyText(title: 'We reserve the right to disclose your personally identifiable information as required by law and when believe it is necessary to share information in order to investigate, prevent, or take action regarding illegal activities, suspected fraud, situations involving potential threats to the physical safety of any person, violations of SG Grocery in terms of use, or as otherwise required by law.'),
                const TitleText(title: 'Changes in this Privacy Statement:'),
                const BodyText(title: 'SG Grocery reserve the right to modify this privacy statement at any time, so please review it time to time. If we make material changes to this policy, we will notify you here.'),
                const SizedBox(height: 30,),
              
              ],
            ),
          ),
        ));
  }
}
