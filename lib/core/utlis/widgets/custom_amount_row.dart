import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:flutter/material.dart';

class CustomAmountRow extends StatefulWidget {
  const CustomAmountRow({super.key});

  @override
  State<CustomAmountRow> createState() => _CustomAmountRowState();
}

class _CustomAmountRowState extends State<CustomAmountRow> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: (){
            setState(() {
              index!=0?index--:0;
            });
          },
          child: Container(
            width: 27,
            height: 27,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                    color: kPrimaryColor,
                    width: 2.0
                )

            ),
            child: const Center(child: Text('-',style: TextStyle(
                fontSize: 14,
                color: kPrimaryColor),)),

          ),
        ),
        const SizedBox(width:7.0,),
        Text("$index",style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: kPrimaryColor
        ),),
        const SizedBox(width: 10.0,),
        InkWell(
          onTap: (){
            setState(() {
              index++;
            });
          },
          child: const CircleAvatar(
            radius: 13,
            backgroundColor: kPrimaryColor,
            child: Center(child: Text('+',style: TextStyle(
                fontSize: 18
                ,color: kWhiteColor),)),
          ),
        ),
      ],
    );
  }
}
