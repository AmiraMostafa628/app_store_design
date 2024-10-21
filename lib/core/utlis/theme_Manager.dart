import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData getAppTheme()
{
  return ThemeData(
    fontFamily: montserrat,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kWhiteColor,
    appBarTheme:  const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        statusBarColor: kPrimaryColor,
      )
    ),
    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      backgroundColor: kPrimaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kWhiteColor,
      unselectedItemColor: Colors.white.withOpacity(.5),
    ),
    textTheme: const TextTheme(
        bodyMedium: TextStyle(
            color: kPrimaryColor,
            fontSize: 24,
            fontWeight: FontWeight.bold

        ),
        bodySmall: TextStyle(
            fontSize: 20,
            color: kPrimaryColor,
            fontWeight: FontWeight.w400

        ),
        headlineMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Color(0xff424242),
            fontFamily: montserratBold


        ),
        labelMedium: TextStyle(
            fontSize: 18,
            color: kWhiteColor,
            fontWeight: FontWeight.w600
        ),
        labelSmall: TextStyle(
            fontSize: 14,
            color: kBlackColor,
            fontWeight: FontWeight.w600
        ),
      headlineSmall: TextStyle(
        fontSize: 12,
        color: Color(0xff656565),
        fontWeight: FontWeight.w500
      ),
      displayLarge: TextStyle(
        fontSize: 20,
        fontFamily: montserratBold,
        color: Color(0xff424242)
      ),
      displaySmall: TextStyle(
        fontSize: 16,
        color: kPrimaryColor,
        fontWeight: FontWeight.w600
      )

    ),
    inputDecorationTheme:   InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      hintStyle:
      const TextStyle(fontSize:12,color: Color(0xffB1B1B1)),
      errorStyle: const TextStyle(color: Colors.red),
      enabledBorder:  OutlineInputBorder(
        borderSide: BorderSide(
          color:  const Color(0xffB1B1B1).withOpacity(.2)
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: kPrimaryColor,
        ),

      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),

      ),
      border:const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffFFFFFF)

          )
      )
),


  );
}
