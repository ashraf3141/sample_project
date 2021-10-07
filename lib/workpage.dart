import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/model/detailscard.dart';

class WorkPage extends StatefulWidget {
  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ListTile(
                  leading: Icon(Icons.calendar_today,
                  color: Colors.white,
                  size: 30
                  ),
                  title: Text("Your Visit\n   with \nDr.Arun",
                  style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                  trailing: OutlineButton(
                    onPressed: (){},
                    color: Colors.transparent,
                    borderSide: BorderSide(color: Colors.white,width: 1.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                    child: Text("Review & Add Notes",
                    style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(blurRadius: 05,
                    color: Colors.black),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage("assets/images/doctor2.jpg"),
                          radius: 35,
                        ),
                        SizedBox(width: 12.0),
                        RichText(
                          text:TextSpan(
                            text: "Dr. Andrella",
                            style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text:"\nsunday, June 5th at 8:00AM",
                                style: TextStyle(fontSize: 15,color: Colors.black45),
                              ),
                              TextSpan(
                                text:"\n8th Cross Street\nC4 Avenue Pondicherry",
                                style:TextStyle(fontSize: 15,color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Divider(
                      color: Colors.grey,
                      height: 3.0,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _iconBuilder(Icons.check_circle,'Check IN',),
                        _iconBuilder(Icons.timelapse_sharp,'Cancel'),
                        _iconBuilder(Icons.calendar_today,'Calendar'),
                        _iconBuilder(Icons.compass_calibration,'Directions'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(blurRadius: 05,color: Colors.black),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                          radius: 35,
                        ),
                        SizedBox(width: 15),
                        RichText(
                          text:TextSpan(
                            text: "Psychotherapist",
                            style: TextStyle(fontSize: 18,color: Colors.pinkAccent,fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text:"\nDr. Andrella",
                                style: TextStyle(fontSize: 15,color: Colors.black45),
                              ),
                              TextSpan(
                                text:"\nsunday, June 5th at 8:00AM",
                                style: TextStyle(fontSize: 15,color: Colors.black45),
                              ),
                              TextSpan(
                                text:"\n8th Cross Street\nC4 Avenue Pondicherry",
                                style:TextStyle(fontSize: 15,color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: FlatButton(
                            onPressed: (){},
                            color: Colors.pinkAccent,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),

                            child: Text("Book",
                            style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: (){},
                          color: Colors.pinkAccent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),

                          child: Text("Cancel",
                            style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DetailsCard(
                        name: "General &\nCheckup ",
                        icon: Icons.local_hospital,
                        color: Colors.pinkAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DetailsCard(
                        name: "General &\nCheckup ",
                        icon: Icons.local_hospital,
                        color: Colors.pinkAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DetailsCard(
                      name: "General &\nCheckup ",
                      icon: Icons.local_hospital,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DetailsCard(
                      name: "General &\nCheckup ",
                      icon: Icons.local_hospital,
                      color: Colors.pinkAccent,
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
//Icon Builder
  _iconBuilder(icon,title ) {
    return Column(
      children: [
        Icon(
          icon,
          size: 18,
          color: Colors.black,
        ),
        SizedBox(height: 4),
        Text(title,
        style: TextStyle(fontSize: 15,color:Colors.black),)
      ],
    );
  }
}
