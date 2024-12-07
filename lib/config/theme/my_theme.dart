import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';

class myTheme {
   static ThemeData LightTheme = ThemeData(
     appBarTheme: const AppBarTheme(
       centerTitle: true,
       backgroundColor: Colors.transparent,
       titleTextStyle: TextStyle(fontSize: 30 ,fontWeight: FontWeight.w700 ,color: Colors.black),
       iconTheme: IconThemeData(
         color: Colors.black,
       ),
     ),
     scaffoldBackgroundColor:Colors.transparent ,
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       showSelectedLabels: true,
       showUnselectedLabels: false,
       backgroundColor: ColorsManager.goldColor,
       elevation: 20,
       selectedItemColor: Colors.black,
       unselectedItemColor: Colors.white,
     ),
     dividerColor: ColorsManager.goldColor ,
     cardTheme: CardTheme(
       margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 6.0),
       color: Colors.white,
       elevation: 18,
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

     ),
     textTheme:  const TextTheme(
       headlineMedium:TextStyle(
           fontSize: 25,fontWeight: FontWeight.w500,color: Color(0xFF242424)
       ),
       titleMedium: TextStyle(
         fontSize: 19,
         color: Color(0xFF242424),
         fontWeight: FontWeight.w400,
       ),
       bodyMedium: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
     ),
   );

}