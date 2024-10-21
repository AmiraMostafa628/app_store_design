


import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    this.borderRadius,
    required this.text,
     this.fontSize, this.onPressed, this.height,this.textColor, this.backgroundColor});

  final BorderRadius? borderRadius;
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final double? fontSize;
  final double? height;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height??48,
      child: TextButton(
          onPressed:onPressed ,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor??kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius:borderRadius?? BorderRadius.circular(10),
              side: BorderSide(
                color:  textColor??Colors.transparent
              )
            )
          ),
          child: Text(text,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: textColor?? kWhiteColor,
            fontSize: fontSize?? 18
          ))),
    );
  }
}


