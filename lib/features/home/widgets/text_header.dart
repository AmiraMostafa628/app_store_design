import 'package:app_store_task/core/utlis/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        InkWell(
          onTap: (){
            GoRouter.of(context).push(AppRouter.kExploreView);
          },
          child: Text("Explore all",
            style: Theme.of(context).textTheme.displaySmall,
          ),
        )
      ],
    );
  }
}
