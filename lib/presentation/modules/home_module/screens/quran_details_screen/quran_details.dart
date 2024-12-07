import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/assets_manager.dart';
import 'package:islami_app/presentation/modules/home_module/screens/quran_details_screen/widgets/verse_widget.dart';
import 'package:islami_app/presentation/modules/home_module/tabs/quran_tab/quran_tab.dart';



 class QuranDetailsScreen extends StatefulWidget {
   QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verse=[];

  @override
  Widget build(BuildContext context) {
    suraItem SuraItem = ModalRoute.of(context)?.settings.arguments as suraItem;
    if(verse.isEmpty)readQuranFile(SuraItem.index+1);

    return Stack(
      children: [
        Image.asset(assetsManager.mainLight,fit: BoxFit.fill,width: double.infinity,height: double.infinity,),
        Scaffold(
          appBar: AppBar(
            title: Text(SuraItem.suraName),
          ),
          body: verse.isEmpty?Center(child: CircularProgressIndicator(),):
          ListView.builder(itemBuilder: (context,index)=> VerseWidget(Verse:verse[index],)),


        ),
      ],
    );
  }

  void readQuranFile(int index)async {
    String fileContent = await rootBundle.loadString('assets/files/${index}.txt');
    List<String> suraLineList = fileContent.trim().split('/n');

    setState(() {
      verse=suraLineList;

    });
  }
}






