import 'package:app_store_task/core/utlis/go_router.dart';
import 'package:app_store_task/core/utlis/widgets/design_scaffold.dart';
import 'package:app_store_task/features/home/widgets/address_items.dart';
import 'package:app_store_task/features/home/widgets/payment_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAddress extends StatelessWidget {
  const MyAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return  DesignScaffold(
        title: 'My Address',
        action: "pop",
        childWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  GoRouter.of(context).push(AppRouter.kAddAddress);
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: AddRow(title: "Add New Address",align:MainAxisAlignment.start),
                ),
              ),
              const SizedBox(height: 20,),
              const AddressItems(),

            ],
          ),
        ));
  }
}
