import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumberWidget extends StatelessWidget {
  const PhoneNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        fillColor: const Color(0xffF5F5F5),
        hintText: 'Phone Number',
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Color(0xff9B9B9B),
          fontFamily: 'montserrat',
        ),
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CountryCodePicker(
              initialSelection: 'EG',
              showOnlyCountryWhenClosed: false,
              showCountryOnly: true,
              showFlag: true,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Container(
                color: const Color(0xffD3D3D3),
                height: 50,
                width: 1,
                // Set the color of the divider
              ),
            ),
          ],
        ),

      ),
    );
  }
}
