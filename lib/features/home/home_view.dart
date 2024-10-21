import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/features/home/widgets/explore_view_body.dart';
import 'package:app_store_task/features/home/widgets/home_view_body.dart';
import 'package:app_store_task/features/home/widgets/my_cart.dart';
import 'package:app_store_task/features/home/widgets/my_favorite.dart';
import 'package:app_store_task/features/home/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  List<Widget> screens = [HomeViewBody(),const ExploreViewBody(), MyCart(),MyFavorite(), ProfileViewBody(),];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: screens[selectedIndex]),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          onTap: (index){
            setState(() {
              selectedIndex=index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            _buildNavItem( AssetsManager.home ,selectedIndex, 0),
            _buildNavItem( AssetsManager.explore,selectedIndex,1),
            _buildNavItem( AssetsManager.cart, selectedIndex,2),
            _buildNavItem( AssetsManager.like, selectedIndex,3),
            _buildNavItem( AssetsManager.person, selectedIndex,4),
          ],
        ),
      )
    );
  }

  _buildNavItem(imageIcon, int currentIndex , int index){
    return BottomNavigationBarItem(
      icon: ImageIcon(AssetImage(imageIcon)),
      label: '',
    );

  }
}
