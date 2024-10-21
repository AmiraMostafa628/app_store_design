import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:flutter/material.dart';

class CustomSearchFormField extends StatelessWidget {
  const CustomSearchFormField({super.key, required this.text, required this.textEditingController, this.prefixIcon});

  final String text;
  final TextEditingController textEditingController;
  final String? prefixIcon;


  @override
  Widget build(BuildContext context) {
    return  Material(
      elevation: 20.0,
      shadowColor: const Color(0xff9B9B9B).withOpacity(0.1),
      borderRadius: BorderRadius.circular(15),
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8),
          hintText: text,
          hintStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: const Color(0xff858FAD).withOpacity(0.5),
              fontFamily: montserrat
          ),
          prefixIconColor:const Color(0xff9B9B9B),
          prefixIcon: prefixIcon!= null ? IconButton(
              onPressed: () {
              },
              icon:ImageIcon(AssetImage(prefixIcon!),size: 17,)) : null ,


        ),
        onFieldSubmitted: (value)async{
        },
      ),
    );
  }

}