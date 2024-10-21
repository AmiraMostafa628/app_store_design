import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/go_router.dart';
import 'package:app_store_task/core/utlis/models/setting_model.dart';
import 'package:app_store_task/core/utlis/widgets/custom_row_header.dart';
import 'package:app_store_task/features/home/widgets/about_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ProfileViewBody extends StatelessWidget {
   ProfileViewBody({super.key});
  
  final List<SettingModel> itemModel =[
    SettingModel(title: 'My orders', icon: AssetsManager.myOrder),
    SettingModel(title: 'My Subscriptions', icon: AssetsManager.mySubscriptions),
    SettingModel(title: 'My Addresses', icon: AssetsManager.myAddresses),
    SettingModel(title: 'FAQ', icon: AssetsManager.faq),
    SettingModel(title: 'Contact Us', icon: AssetsManager.contactUs),
    SettingModel(title: 'About', icon: AssetsManager.about),
    SettingModel(title: 'Log Out', icon: AssetsManager.logOut),
  ];

  final List screens = [AppRouter.kOrder,AppRouter.kMySubscription,AppRouter.kAddress,
    AppRouter.kFaq,AppRouter.kContactUs,AppRouter.kAboutView,AppRouter.kLoginView];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomRowHeader(text: 'Profile',color: Color(0xff424242),action: "push",),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(AssetsManager.profile),
            ),
            const SizedBox(height: 10,),
            Text('Amira M.',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: const Color(0xff000000),
              ),
            ),
            Text('@amira24',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: const Color(0xff4B4B4B),
                fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(height: 30.0,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffF3FFF5),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                        topRight: Radius.circular(12))
                  ),
                  child: ListView.builder(
                    itemCount: itemModel.length,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          GoRouter.of(context).push(screens[index]);

                        },
                        child: ListTile(
                          leading: SvgPicture.asset(itemModel[index].icon),
                          title: Text(itemModel[index].title,
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: const Color(0xff707070),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
