import 'package:app_store_task/core/utlis/assets_manager.dart';
import 'package:app_store_task/core/utlis/models/model.dart';
import 'package:flutter/material.dart';

class FeaturedItems extends StatelessWidget {
  FeaturedItems({super.key});

  final List<Model> featuredItems = [
    Model(
        name: 'Granola\nPremium Almond',
        image: AssetsManager.granolaPremiumAlmond,
        price: '\$22.00',
        amount: '1 kg'),
    Model(
        name: 'SFT kiwi slice (Dried)',
        image: AssetsManager.kiwiSlice,
        price: '\$4.00',
        amount: '3 pcs.'),
    Model(
        name: 'SFT kiwi slice (Dried)',
        image: AssetsManager.kiwiSlice2,
        price: '\$5.00',
        amount: '2 pcs.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: featuredItems.asMap().entries.map(
          (entry) {
            int index = entry.key;
            var item = entry.value;
            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 4.0, top: 10.0, bottom: 10.0),
                decoration: BoxDecoration(
                    color: (index % 2 == 0)
                        ? const Color(0xffFFEBE5)
                        : const Color(0xffF9FFDA),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(child: Image.asset(item.image, fit: BoxFit.fill)),
                    const SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 140,
                          child: Text(
                            item.name,
                            maxLines: 2,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  fontSize: 13,
                                  color: const Color(0xff424242),
                                ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.price!,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    fontSize: 14,
                                  ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Text(
                              item.amount!,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                      fontSize: 14,
                                      color: const Color(0xff424242)),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ).toList()),
      ),
    );
  }
}
