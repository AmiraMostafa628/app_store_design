import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class AddressItems extends StatefulWidget {
  const AddressItems({super.key});

  @override
  State<AddressItems> createState() => _AddressItemsState();
}

class _AddressItemsState extends State<AddressItems> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          _buildSelectableItem(
            index: 0,
            title:  'Home',
            address: '4517 Washington Ave. Manchester, Kentucky 39495', image: AssetsManager.house,
          ),
          _buildSelectableItem(
            index: 1,
            title: 'Office',
            image: AssetsManager.office,
            address: '2118 Thornridge Cir. Syracuse, Connecticut 35624',
          ),
        ],
      ),
    );
  }

  Widget _buildSelectableItem({required int index, required String title, required String image,
    required String address}) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          child: RadioListTile<int>(
            value: index,
            groupValue: _selectedIndex,
            onChanged: (int? value) {
              setState(() {
                _selectedIndex = value!;
              });
            },
            activeColor: kPrimaryColor,

          ),
        ),
        Expanded(
          child: InkWell(
            onTap: (){
             setState(() {
               _selectedIndex=index;
             });
            },
            child: Card(
              elevation: 0.5,
              color: kWhiteColor,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Flexible(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             SvgPicture.asset(image),
                             const SizedBox(width: 10.0,),
                             Text(title,
                                 style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                     color: const Color(0xff000000)
                                 )
                             ),
                           ],
                         ),
                         const SizedBox(height: 10.0,),
                         Text(address,
                           style: Theme.of(context).textTheme.labelSmall!
                         )

                       ],
                     ),
                   ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.edit),
                          SizedBox(width: 15.0,),
                          Icon(Icons.delete),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

}
