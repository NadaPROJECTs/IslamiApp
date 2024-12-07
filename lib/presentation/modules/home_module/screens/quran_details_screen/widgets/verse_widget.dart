import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String Verse ="";
   VerseWidget({super.key,required this.Verse});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
        child:  Text(Verse , textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
