import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/features/home/widgets/carousal_slider.dart';
import 'package:app_store_task/features/home/widgets/categories_items.dart';
import 'package:app_store_task/features/home/widgets/custom_search_form_field.dart';
import 'package:app_store_task/features/home/widgets/deals_of_the_week.dart';
import 'package:app_store_task/features/home/widgets/featured_items.dart';
import 'package:app_store_task/features/home/widgets/products_items.dart';
import 'package:app_store_task/features/home/widgets/text_header.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
      HomeViewBody({super.key});

  final searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
            child: CustomSearchFormField(
                text: 'Search products and brands',
                textEditingController: searchController,
              prefixIcon: AssetsManager.search,
            ),
          ),
          const CarousalSliderWidget(),
          const SizedBox(
            height: 15.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: TextHeader(text: 'Top Categories',
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          CategoriesItems(),
          const SizedBox(
            height: 25.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: TextHeader(text: 'Top Products',),
          ),
          const SizedBox(
            height: 25.0,
          ),
          ProductsItems(),
          const SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Image.asset(AssetsManager.advertisement2,fit: BoxFit.contain,),
          ),
          const SizedBox(
            height: 25.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: TextHeader(text: 'Deals of the week',),
          ),
          const SizedBox(
            height: 25.0,
          ),
          DealsOfTheWeek(),
          const SizedBox(
            height: 25.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: TextHeader(text: 'Featured Items',),
          ),
          const SizedBox(
            height: 25.0,
          ),
          FeaturedItems(),
          const SizedBox(
            height: 50.0,
          ),

      
      
        ],
      ),
    );
  }
}
