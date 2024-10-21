import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:flutter/material.dart';

class PaymentRadioButton extends StatefulWidget {
  const PaymentRadioButton({super.key});

  @override
  State<PaymentRadioButton> createState() => _PaymentRadioButtonState();
}

class _PaymentRadioButtonState extends State<PaymentRadioButton> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          _buildSelectableItem(
            index: 0,
            title:  'Cash On Delivery',
          ),
          _buildSelectableItem(
            index: 1,
            title: 'UPI',
          ),
          _buildSelectableItem(
            index: 2,
            title: 'Wallet',
          ),
          _buildSelectableItem(
            index: 3,
            title: 'Credit / Debit Card',
          ),
        ],
      ),
    );
  }

  Widget _buildSelectableItem({required int index, required String title,}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Card(
        elevation: 0.0,
        color: const Color(0xffF3FFF5),
        child: RadioListTile<int>(
          value: index,
          groupValue: _selectedIndex,
          onChanged: (int? value) {
            setState(() {
              _selectedIndex = value!;
            });
          },
          activeColor: kPrimaryColor,
          title: Text(title,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: const Color(0xff7E7E7E),
                fontWeight: FontWeight.w400

              )
          ),
        ),
      ),
    );
  }

}
