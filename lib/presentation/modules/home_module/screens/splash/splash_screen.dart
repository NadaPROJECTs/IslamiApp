import 'package:flutter/material.dart';
import 'package:islami_app/core/assets_manager.dart';
import 'package:islami_app/core/route_manager.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, routes_manager.homeRoute);
    });
    return Scaffold(
      body: 
      Image.asset(assetsManager.SplashLight, fit: BoxFit.fill,width: double.infinity,height: double.infinity,),
      
    );
  }
}
