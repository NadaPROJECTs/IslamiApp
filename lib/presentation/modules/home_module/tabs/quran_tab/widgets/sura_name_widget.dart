import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';
import 'package:islami_app/core/route_manager.dart';

import '../quran_tab.dart';

class SuraNameWidget extends StatelessWidget {
  suraItem SuraItem;

  SuraNameWidget({super.key , required this.SuraItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
          Navigator.pushNamed(context, routes_manager.quranDetailsRoute ,
          arguments: SuraItem
          );

      },
      child: IntrinsicHeight(
        child: Row(
         // textDirection: TextDecoration.rtl,
          children: [
            Expanded(child: Text(SuraItem.suraName,textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleMedium,)),
            Container(
             width: 3,
              color: Theme.of(context).dividerColor,
            ),
            Expanded(child: Text(SuraItem.versesNumber,textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleMedium,)),
          ],

        ),
      ),
    );
  }
}
