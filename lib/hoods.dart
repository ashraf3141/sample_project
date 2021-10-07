import 'package:flutter/material.dart';

class Hoods extends StatefulWidget {
  @override
  _HoodsState createState() => _HoodsState();
}

class _HoodsState extends State<Hoods> {
  List<bool>isSelect=List.generate(5, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Center(
      child:ToggleButtons(
        selectedBorderColor: Colors.purple,
        renderBorder: false,
        fillColor: Colors.transparent,
        children: [
          Icon(Icons.sentiment_very_dissatisfied,size: 35,),
          Icon(Icons.sentiment_dissatisfied,size: 35,),
          Icon(Icons.sentiment_neutral,size: 35,),
          Icon(Icons.sentiment_satisfied,size: 35,),
          Icon(Icons.sentiment_very_satisfied,size: 35,),
        ],
        isSelected: isSelect,
        onPressed: (int index){
          setState(() {
            isSelect[index]=!isSelect[index];
          });
        },
      ),
    );
  }
}
