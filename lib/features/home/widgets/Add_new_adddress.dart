import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/core/utlis/widgets/custom_button.dart';
import 'package:app_store_task/core/utlis/widgets/custom_text_form_field.dart';
import 'package:app_store_task/core/utlis/widgets/design_scaffold.dart';
import 'package:flutter/material.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return const DesignScaffold(
      title: 'Add New Address',
      action: "pop",
      childWidget: AddNewAddressBody(),
    );
  }
}

class AddNewAddressBody extends StatefulWidget {
  const AddNewAddressBody({super.key});

  @override
  State<AddNewAddressBody> createState() => _AddNewAddressBodyState();
}

class _AddNewAddressBodyState extends State<AddNewAddressBody> {
  int _selectedIndex = -1;

  void _onCheckBoxChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CustomTextFormField(
                text: 'Country',
                color: const Color(0xffF5F5F5),
                textEditingController: TextEditingController(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CustomTextFormField(
                text: 'State',
                color: const Color(0xffF5F5F5),
                textEditingController: TextEditingController(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CustomTextFormField(
                text: 'City',
                color: const Color(0xffF5F5F5),
                textEditingController: TextEditingController(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CustomTextFormField(
                text: 'Pincode',
                color: const Color(0xffF5F5F5),
                textEditingController: TextEditingController(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CustomTextFormField(
                text: 'Area',
                color: const Color(0xffF5F5F5),
                textEditingController: TextEditingController(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CustomTextFormField(
                text: 'Landmark',
                color: const Color(0xffF5F5F5),
                textEditingController: TextEditingController(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      CheckBox(
                        index: 0,
                        isSelected: _selectedIndex == 0,
                        onChanged: _onCheckBoxChanged,
                      ),
                      const Text(
                        'Home',
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      CheckBox(
                        index: 1,
                        isSelected: _selectedIndex == 1,
                        onChanged: _onCheckBoxChanged,
                      ),
                      const Flexible(
                        child: Text(
                          'Work / Office',
                          maxLines: 2,
                          style: TextStyle(
                            color: Color(0xff9B9B9B),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Row(
                    children: [
                      CheckBox(
                        index: 2,
                        isSelected: _selectedIndex == 2,
                        onChanged: _onCheckBoxChanged,
                      ),
                      const Text(
                        'Other',
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25,),
            const SizedBox(
              width: 200,
              child: CustomButton(text: 'Save',),
            )
          ],
        ),
      ),
    );
  }
}


class CheckBox extends StatelessWidget {
  const CheckBox({
    super.key,
    required this.index,
    required this.isSelected,
    required this.onChanged,
  });

  final int index;
  final bool isSelected;
  final void Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isSelected,
      onChanged: (value) {
        if (value == true) {
          onChanged(index);
        }
      },
      activeColor: kPrimaryColor,
    );
  }
}
