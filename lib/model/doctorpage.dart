import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorPage extends StatefulWidget {
  @override
  _DoctorPageState createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,color: Colors.white),
        title: Text("Doctor Form",
        style: TextStyle(fontSize: 18,fontFamily: "Medium",fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 25),
          Icon(Icons.menu),
        ],
        backgroundColor: Colors.pinkAccent,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 20.0,right: 20.0),
            child: Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(blurRadius: 02,color: Colors.black45),
                ],
              ),
              child: ListTile(
                leading: Icon(Icons.calendar_today,color: Colors.white),
                title: Text("Your visit with \nDr.karthik",
                style: TextStyle(fontSize: 15,color: Colors.white,fontWeight:FontWeight.bold),
                ),
                trailing: OutlineButton(
                  onPressed: (){},
                  color:Colors.white,
                  borderSide: BorderSide(color: Colors.white,width: 1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  child: Text("Review & Add Notes",
                  style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 20.0,right: 20.0),
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(blurRadius: 02,color: Colors.black45),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor:Colors.grey,
                        backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                        radius: 35,
                      ),
                      SizedBox(width: 10),
                      RichText(
                        text: TextSpan(
                          text: "Dr.Andrella",
                          style: TextStyle(fontSize: 15,color: Colors.black,fontFamily: "Medium",fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: "\nSunday 8th at 10:00 Am",
                              style:  TextStyle(fontSize: 15,color: Colors.grey,fontFamily: "Medium",fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "\n8th Cross Street \nc4 Avenue Pondicherry",
                              style:  TextStyle(fontSize: 15,color: Colors.grey,fontFamily: "Medium",fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 05),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: FlatButton(
                            color: Colors.pinkAccent,
                            onPressed: (){},
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                            child: Text('Book',
                              style: TextStyle(fontSize: 15,color: Colors.white),
                            ),
                          ),
                        ),
                        FlatButton(
                          color: Colors.pinkAccent,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                          child: Text('Cancel',
                            style: TextStyle(fontSize: 15,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 10,right: 16),
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(blurRadius: 05,color: Colors.black),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                        radius: 40,
                      ),
                      SizedBox(width: 10),
                      RichText(
                        text: TextSpan(
                          text: "Psychotherapist",
                          style: TextStyle(fontSize: 18,
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Medium",
                          ),
                          children: [
                            TextSpan(
                              text: "\n Dr.Scarelett",
                                style: TextStyle(fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Medium",
                                ),
                            ),
                            TextSpan(
                              text: "\n sunday 8th july at 11.00 PM",
                                style: TextStyle(fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Medium",
                                )
                            ),
                            TextSpan(
                              text: "\n5th main road \nC5 Avenue Pondichery",
                                style: TextStyle(fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Medium",
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 20,right: 16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 05,
                    color: Colors.black,
                  ),
                ],
              ),
              child: Column(
                children: [
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       CircleAvatar(
                         backgroundColor: Colors.grey,
                         backgroundImage:AssetImage("assets/images/doctor2.jpg"),
                         radius: 40,
                       ),
                       SizedBox(width: 10),
                       RichText(
                         text: TextSpan(
                           text: "Dental Specialist",
                           style: TextStyle(fontSize: 18,
                               color: Colors.pinkAccent,
                               fontFamily: "Medium",
                               fontWeight: FontWeight.bold),
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
                 ),
                  SizedBox(height: 8.0),
                  Divider(
                      color: Colors.grey,
                      height: 2,
                    thickness: 1,
                  ),
                  SizedBox(height: 8.0),
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
        ],
      ),
    );
  }
  _iconBuilder(icon,title) {
    return Column(
      children: [
        Icon(
          icon,
          size: 20,
          color: Colors.black,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
            title,
            style:TextStyle(
              fontSize: 15,
              color: Colors.black,
            )
        ),
      ],
    );
  }
}
