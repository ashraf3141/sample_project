import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/model/servicecard.dart';
import 'package:sample_project/model/statscard.dart';
class HospiCare extends StatefulWidget {
  @override
  _HospiCareState createState() => _HospiCareState();
}

class _HospiCareState extends State<HospiCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0,left: 16.0,right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Med",
                      style: TextStyle(fontSize: 28,color: Colors.pinkAccent,fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "_Apps",
                          style: TextStyle(fontSize: 24,color: Colors.black,fontFamily: "Medium"),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on,size: 18,color: Colors.black),
                      Text("Cuddalore",
                        style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.keyboard_arrow_down,
                      size: 18,color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 16,top: 5,right: 16),
              child: Text("What are You Looking For ?",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16,bottom: 10),
                    child: ServiceCard(name: "General\nCheck up",
                      icon:Icons.medical_services_outlined ,
                      color: Colors.pinkAccent,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ServiceCard(
                      name: "Chat\nWith Doctor" ,
                      icon:Icons.chat ,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ServiceCard(
                      name: "Get Doctor\n Advice" ,
                      icon:Icons.emoji_emotions,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ServiceCard(
                      name: "Get Health\n News" ,
                      icon:Icons.run_circle_outlined,
                      color: Colors.pinkAccent,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 16,right: 16),
              child: Text("Disease: Covid-19",
              style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            LimitedBox(
              maxHeight: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  StatsCard(country: 'India', cases: 298, infected: 278, cured: 106),
                  StatsCard(country: 'USA', cases: 298, infected: 254, cured: 106),
                  StatsCard(country: 'Malaysia', cases: 298, infected: 254, cured: 106),
                  StatsCard(country: 'Abroad', cases: 298, infected: 254, cured: 106),
                  StatsCard(country: 'California', cases: 298, infected: 254, cured: 106),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Prevention Measurements",style: TextStyle(fontFamily: "Medium",fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
