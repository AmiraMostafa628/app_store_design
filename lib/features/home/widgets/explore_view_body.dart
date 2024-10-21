import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/go_router.dart';
import 'package:app_store_task/features/home/widgets/bakery_items.dart';
import 'package:app_store_task/features/home/widgets/dairy_products.dart';
import 'package:app_store_task/features/home/widgets/explore_header.dart';
import 'package:app_store_task/features/home/widgets/fruit_items.dart';
import 'package:app_store_task/features/home/widgets/groceries_items.dart';
import 'package:app_store_task/features/home/widgets/vegetables_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kHomeView);
                    },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(AssetsManager.arrowBack),
                      )),
                  Expanded(
                    child: Center(
                      child: Text("Explore",
                        style: Theme.of(context).textTheme.headlineMedium
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      const ExploreHeader(text: 'Groceries'),
                      const SizedBox(
                        height: 25,
                      ),
                      GroceriesItems(),
                      const SizedBox(
                        height: 25,
                      ),
                      const ExploreHeader(text: 'Vegetables'),
                      const SizedBox(
                        height: 25,
                      ),
                      VegetablesItems(),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Fruits',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          InkWell(
                            onTap: (){
                              GoRouter.of(context).push(AppRouter.kFruitView);
                            },
                            child: Text("See all",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      FruitItems(),
                      const SizedBox(
                        height: 25,
                      ),
                      const ExploreHeader(text: 'Dairy Products'),
                      const SizedBox(
                        height: 25,
                      ),
                      DairyProducts(),
                      const SizedBox(
                        height: 25,
                      ),
                      const ExploreHeader(text: 'Bakery Items'),
                      const SizedBox(
                        height: 25,
                      ),
                      BakeryItems(),
                      const SizedBox(
                        height: 25,
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
