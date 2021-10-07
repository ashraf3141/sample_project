import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;

  const DetailsCard({Key? key, required this.name, required this.icon, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 150,
      child: Stack(
        fit: StackFit.loose,
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              child: Container(
                height: 155,
                width: 140,
                padding: EdgeInsets.all(15),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(name,style: TextStyle(fontSize: 15,color: Colors.black,fontWeight:FontWeight.bold),),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(25),
              color: color,
              child: Container(
                height: 80,
                width: 80,
                child: Center(
                  child: Icon(icon,size: 44,color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
