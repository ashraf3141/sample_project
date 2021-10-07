import 'package:flutter/material.dart';
import 'package:sample_project/Health.dart';
import 'package:sample_project/homescreen.dart';

class demoo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Flutter Container"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           Container(
             margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
             height: 170,
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: [
                 GestureDetector(
                   onTap:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                   },
                   child: Container(
                     width: 150,
                     child: Card(
                       child: Wrap(
                         children: [
                           Image.asset("assets/images/tour1.jpg",
                               fit: BoxFit.cover),
                           ListTile(
                             title: Text("Goa"),
                             subtitle: Text("Marine Beach"),
                           )
                         ],
                       ),
                     ),
                   ),
                 ),
                 SizedBox(width: 5),
                 GestureDetector(
                   onTap: (){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HealthPage()));
                   },
                   child: Container(
                     width: 150,
                     child: Card(
                       child: Wrap(
                         children: [
                           Image.asset("assets/images/tour2.jpg",
                               fit: BoxFit.cover),
                           ListTile(
                             title: Text("Malaysia"),
                             subtitle: Text("Booky pinthong"),
                           )
                         ],
                       ),
                     ),
                   ),
                 ),
                 SizedBox(width: 5),
                 Container(
                   width: 150,
                   child: Card(
                     child: Wrap(
                       children: [
                         Image.asset("assets/images/tour1.jpg"),
                         ListTile(
                           title: Text("Dubai"),
                           subtitle: Text("Beach Resort"),
                         )
                       ],
                     ),
                   ),
                 ),
                 SizedBox(width: 5),
                 Container(
                   width: 150,
                   child: Card(
                     child: Wrap(
                       children: [
                         Image.asset("assets/images/tour6.jpg",
                             fit: BoxFit.cover),
                         ListTile(
                           title: Text("Malaysia"),
                           subtitle: Text("Booky pinthong"),
                         )
                       ],
                     ),
                   ),
                 ),
                 SizedBox(width: 5),
                 Container(
                   width: 150,
                   child: Card(
                     child: Wrap(
                       children: [
                         Image.asset("assets/images/tour2.jpg",
                             fit: BoxFit.cover),
                         ListTile(
                           title: Text("Malaysia"),
                           subtitle: Text("Booky pinthong"),
                         )
                       ],
                     ),
                   ),
                 ),
               ],
             ),
           ),
          ],
        ),
      ),
    );
  }
}
