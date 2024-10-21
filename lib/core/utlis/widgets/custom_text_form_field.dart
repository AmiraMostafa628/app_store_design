

import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.text,
    required this.textEditingController, this.prefixIcon, this.color,
    this.widget, this.suffixIcon, this.type,this.validate,this.isPassword=false, this.suffixPressed});

  final String text;
  final TextEditingController textEditingController;
  final String? prefixIcon;
  final IconData? suffixIcon;
  final Color? color;
  final Widget? widget;
  final TextInputType? type;
  final bool? isPassword;
  final FormFieldValidator? validate;
  final Function? suffixPressed;


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: TextFormField(
        controller: textEditingController,
        keyboardType: type?? TextInputType.text,
        obscureText: isPassword!,
        validator: (value) {
          return validate!(value);
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(15),
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            errorBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.red,

                )
            ),
            fillColor: color??Colors.transparent ,
            hintText: text,
            hintMaxLines: 2,
            hintStyle: TextStyle(
              fontSize: color !=null?16:13,
              fontWeight: FontWeight.w300,
              color: color !=null?const Color(0xff9B9B9B):const Color(0xff858FAD).withOpacity(0.8),
              fontFamily: montserrat
            ),
          prefixIcon: prefixIcon!= null ? IconButton(
              onPressed: () {

              },
              icon:ImageIcon(AssetImage(prefixIcon!),size: 17,)) : null ,
          suffixIcon: suffixIcon!= null ? IconButton(
              onPressed: () {
                suffixPressed!();
              },
              icon:Icon(suffixIcon) ): null ,


        ),
        onFieldSubmitted: (value)async{
        },
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {

    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
            color: color != null?Colors.transparent:const Color(0xff9A9A9A).withOpacity(0.5),

        )
    );
  }
}