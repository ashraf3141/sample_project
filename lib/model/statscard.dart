import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class StatsCard extends StatelessWidget {
  final String country;
  final int cases,infected,cured;

  const StatsCard({Key? key, required this.country, required this.cases, required this.infected, required this.cured})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 05,color: Colors.black),

        ],
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      margin: EdgeInsets.all(8),
      child:Material(
        elevation: 2,
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        shadowColor: Colors.black45,
        child: Container(
          width: MediaQuery.of (context).size.width*0.6,
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(country,
                  style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Medium"),
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pinkAccent.withOpacity(.5),
                    ),
                    child: Icon(Icons.keyboard_arrow_down,
                    color: Colors.blueGrey,
                    size: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                margin: EdgeInsets.only(bottom: 12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent.withOpacity(.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text('Infected : $infected', style: TextStyle(fontSize: 14,color: Colors.black,fontFamily: "Medium"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                margin: EdgeInsets.only(bottom: 12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent.withOpacity(.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text('Cured : $cured', style: TextStyle(fontSize: 14,color: Colors.black,fontFamily: "Medium"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                margin: EdgeInsets.only(bottom: 12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent.withOpacity(.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text('Cases : $cases', style: TextStyle(fontSize: 14,color: Colors.black,fontFamily: "Medium"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


