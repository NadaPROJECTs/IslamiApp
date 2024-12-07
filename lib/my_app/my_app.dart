import 'package:flutter/material.dart';
import 'package:islami_app/config/theme/my_theme.dart';
import 'package:islami_app/core/route_manager.dart';
import 'package:islami_app/presentation/modules/home_module/screens/home/home_screen.dart';
import 'package:islami_app/presentation/modules/home_module/screens/quran_details_screen/quran_details.dart';
import 'package:islami_app/presentation/modules/home_module/screens/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: myTheme.LightTheme,
       routes: {
         routes_manager.homeRoute :(_)=>HomeScreen(),
         routes_manager.SplashRoute :(_)=>SpalshScreen(),
         routes_manager.quranDetailsRoute :(_)=>QuranDetailsScreen(),



       },
      initialRoute: routes_manager.SplashRoute ,


    );
  }
}
