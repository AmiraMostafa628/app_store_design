import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title,});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Text(title,
        style: Theme.of(context).textTheme.displayLarge!.copyWith(
          decoration: TextDecoration.underline,
          color: const Color(0xff000000),
          decorationColor:const Color(0xff9F9F9F),
          height: 1.5
        ),
      ),
    );
  }
}
