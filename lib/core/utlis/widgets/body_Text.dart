import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
   const BodyText({super.key, required this.title});

   final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Text(title,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: const Color(0xff000000),
            fontWeight: FontWeight.w400,
            fontSize: 14,
            wordSpacing: 2,
            height: 1.8
        ),
      ),
    );
  }
}
