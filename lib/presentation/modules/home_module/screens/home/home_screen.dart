import 'package:flutter/material.dart';
import 'package:islami_app/core/assets_manager.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/strings_manager.dart';
import 'package:islami_app/presentation/modules/home_module/tabs/hadith_tab/hadith_tab.dart';
import 'package:islami_app/presentation/modules/home_module/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/presentation/modules/home_module/tabs/radio_tab/radio_tab.dart';
import 'package:islami_app/presentation/modules/home_module/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami_app/presentation/modules/home_module/tabs/setting_tab/settings_tab.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget>tabs=[
    QuranTab(),
    RadioTab(),
    HadithTab(),
    SebhaTab(),
    SettingsTab()
  ];
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage (
            fit: BoxFit.fill,

            image: AssetImage(assetsManager.mainLight),)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent ,
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          title: Text(stringsManager.appTitle),

        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            selectedIndex=index;
            setState(() {

            });
          },
          type: BottomNavigationBarType.fixed,
          items:  [
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: ImageIcon(AssetImage(assetsManager.quran)),label: stringsManager.quranlabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: ImageIcon(AssetImage(assetsManager.hadith)),label: stringsManager.hadith_label),
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: ImageIcon(AssetImage(assetsManager.sebha)),label: stringsManager.tasbeh_label),
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: ImageIcon(AssetImage(assetsManager.radio)),label: stringsManager.radiolabel),
            BottomNavigationBarItem(
                backgroundColor: ColorsManager.goldColor,
                icon: Icon(Icons.settings),label: stringsManager.setting_label)

          ],),
        body: tabs[selectedIndex],
      ),
    );

  }
}


