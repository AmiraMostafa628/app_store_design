import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  final List<String> items = [
    'Subscription -Weekly',
    'Subscription -monthly',
    'Subscription -yearly',
  ];

  String selectedValue = 'Subscription -Weekly';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Row(
            children: [
              Expanded(
                child: Text(
                  selectedValue,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: const Color(0xff424242)
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: items
              .map((String item) =>
              DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: const Color(0xff424242)
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
          },
          buttonStyleData: ButtonStyleData(

            padding: const EdgeInsets.only(right: 10,top: 2,bottom: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: const Color(0xffFFFFFF),
              ),
              color: const Color(0xffFFFFFF),
            ),
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.keyboard_arrow_down,
            ),
            iconEnabledColor: Color(0xff424242),
            iconDisabledColor: Color(0xff424242),
          ),
          dropdownStyleData: const DropdownStyleData(
            decoration: BoxDecoration(
              color: Color(0xffF5F5F7),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    );
  }
}
