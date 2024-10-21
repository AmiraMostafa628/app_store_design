import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomRowHeader extends StatelessWidget {
  const CustomRowHeader({super.key, required this.text,this.color, required this.action});

  final String text;
  final Color? color;
  final  String action;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: (){
               action == "pop"?GoRouter.of(context).pop():GoRouter.of(context).push(AppRouter.kHomeView);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AssetsManager.arrowBack,color: color?? kWhiteColor,),
              )),
          const SizedBox(width: 5.0,),
          Text(text,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: color??kWhiteColor
              )
          )
        ],
      ),
    );
  }
}
