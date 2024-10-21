import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/widgets/custom_row_header.dart';
import 'package:flutter/material.dart';

class DesignScaffold extends StatelessWidget {
  const DesignScaffold({super.key, required this.title, this.color, required this.childWidget, required this.action});

  final String title;
  final Color? color;
  final Widget childWidget;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: kPrimaryColor,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomRowHeader(text: title,color: color,action:action ,),
              const SizedBox(height: 10,),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                  ),
                  child: childWidget,
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
