import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:sample_project/newcard.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        if(EasyLoading.isShow){
          EasyLoading.dismiss();
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,
            color: Colors.white),
            tooltip: 'Back Icon',
            onPressed: (){
              if(EasyLoading.isShow){
                EasyLoading.dismiss();
              }
              Navigator.pop(context);
            },
          ),
          title: Text("Doctor Form"),
          titleSpacing: 00.0,
          toolbarHeight: 80.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25.0),
            bottomLeft: Radius.circular(25.0),
          ),
          ),
          elevation: 0.0,
          backgroundColor: Colors.pinkAccent,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 10,top: 25,right: 10),
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
            Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(25),
            ),
            child: ListTile(
              leading: Icon(Icons.calendar_today_outlined,
                color: Colors.white,
                size: 30,
              ),
              title: Text("Your visit \n    with Dr.Karthik",
                style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),
              ),
              trailing: OutlineButton(
                onPressed: (){},
                color: Colors.transparent,
                borderSide: BorderSide(
                  color: Colors.white,width: 1.0,
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)
                ),
                child: Text(
                  "Review & Add Notes",
                  style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),

                SizedBox(height: 20),
                Container(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16,right: 16,bottom: 10),
                        child: NewCard(name: "General\nCheck up",
                          icon:Icons.medical_services_outlined ,
                          color: Colors.pinkAccent,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: NewCard(
                          name: "Chat\nWith Doctor" ,
                          icon:Icons.chat ,
                          color: Colors.pinkAccent,
                        ),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: NewCard(
                          name: "Get Doctor\n Advice" ,
                          icon:Icons.emoji_emotions,
                          color: Colors.pinkAccent,
                        ),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: NewCard(
                          name: "Get Health\n News" ,
                          icon:Icons.run_circle_outlined,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),
                ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 18.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(blurRadius: 05),
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
                  padding: const EdgeInsets.only(left: 16,right: 16),
                  child: Text("Covid_19 Cases",
                  style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 10),
                LimitedBox(
                  maxHeight: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      StatsCard(country: 'Cuddalore', cases: 17789, infected: 14320, cured: 12850),
                      StatsCard(country: 'Pondicherry', cases: 19670, infected: 13467, cured: 67890),
                      StatsCard(country: 'Chennai', cases: 45678, infected: 56789, cured: 89765),
                      StatsCard(country: 'Bangalore', cases: 97865, infected: 78065, cured: 23456),
                      StatsCard(country: 'Madurai', cases: 55889, infected: 67889, cured: 98763),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Padding(padding:const EdgeInsets.only(bottom: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Description",
                    style: TextStyle(fontSize: 20.0,fontFamily: "Medium",fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 100.0,
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Material(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: TextFormField(
                      onChanged: (String value){},
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.multiline,
                    ),
                  ),
                ),
                ),
                Padding(padding: const EdgeInsets.only(left: 10,bottom: 10.0,top: 15.0),
                  child: Align(alignment: Alignment.topLeft,
                  child: Text("Fees",
                  style: TextStyle(fontSize: 20.0,fontFamily: "Medium",fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                  ),
                ),
                Container(
                  height: 75,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Material(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: TextFormField(
                        onChanged: (String value){},
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left:10,bottom: 10.0,top: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("GALLERY IMAGE",
                    style: TextStyle(color: Colors.black,fontSize: 18,fontFamily: "Medium",fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                 height: 100,
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children: [
                     Container(
                       child: Stack(
                         children: [
                           Container(
                             width: 120,
                             height: 120,
                             decoration: BoxDecoration(
                               border: Border.all(width: 5,
                               color: Theme.of(context).scaffoldBackgroundColor),
                               boxShadow: [
                                 BoxShadow(
                                   spreadRadius: 2,
                                   blurRadius: 05,
                                   color: Colors.black.withOpacity(0.1),
                                   offset: Offset(0,10),
                                 ),
                               ],
                               shape: BoxShape.rectangle,
                               image: DecorationImage(
                                 image: AssetImage("assets/images/doctor2.jpg"),
                               ),
                             ),
                           ),
                           Positioned(
                             bottom: 8,
                             right: 5,
                             child: Container(
                               height: 35,
                               width: 35,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(width: 4,
                                 color:Theme.of(context).scaffoldBackgroundColor,
                                 ),
                                 color: Colors.black45,
                               ),
                               child: Icon(Icons.edit,color: Colors.white),
                             ),
                           ),
                         ],
                       ),
                     ),
                     SizedBox(width: 15.0),
                     Container(
                       child: Stack(
                         children: [
                           Container(
                             height: 120,
                             width: 120,
                             decoration: BoxDecoration(
                               border: Border.all(
                                 width: 4,
                                 color: Theme.of(context).scaffoldBackgroundColor,
                               ),
                               boxShadow: [
                                 BoxShadow(
                                   spreadRadius: 2,
                                   blurRadius: 10,
                                   color: Colors.black45.withOpacity(0.1),
                                   offset: Offset(0,10),
                                 ),
                               ],
                               shape: BoxShape.rectangle,
                               image: DecorationImage(
                                 image: AssetImage('assets/images/doctor1.jpg'),
                               )
                               ),
                             ),
                           Positioned(
                             bottom: 8,
                             right: 5,
                             child: Container(
                               height: 35,
                               width: 35,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(width: 4,
                                   color:Theme.of(context).scaffoldBackgroundColor,
                                 ),
                                 color: Colors.black45,
                               ),
                               child: Icon(Icons.edit,color: Colors.white),
                             ),
                           ),
                               ],
                             ),
                           ),
                     SizedBox(width: 15.0),
                     Container(
                       child: Stack(
                         children: [
                           Container(
                             height: 120,
                             width: 120,
                             decoration: BoxDecoration(
                               border: Border.all(
                                 width: 4,
                                 color: Theme.of(context).scaffoldBackgroundColor,
                               ),
                               boxShadow: [
                                 BoxShadow(
                                   spreadRadius: 2,
                                   blurRadius: 10,
                                   color: Colors.black45.withOpacity(0.1),
                                   offset: Offset(0,10),
                                 ),
                               ],
                               shape: BoxShape.rectangle,
                               image: DecorationImage(
                                 image: AssetImage("assets/images/doctor2.jpg"),
                               ),
                             ),
                           ),
                           Positioned(
                             bottom: 8,
                             right: 5,
                             child: Container(
                               height: 35,
                               width: 35,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(width: 4,
                                 color: Theme.of(context).scaffoldBackgroundColor,
                                 ),
                                 color: Colors.black45,
                               ),
                               child: Icon(Icons.edit,color: Colors.white),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10.0,
                    top: 20.0,
                    left: 16.0,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("VIDEO LINKS",
                    style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: "Medium",
                    ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Material(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    child: TextFormField(
                      onChanged: (String value){},
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 50.0,
                      child: OutlineButton(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text("CANCEL",
                        style: TextStyle(fontSize: 15,letterSpacing: 2.2,color: Colors.black)),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: (){},
                        color: Colors.pinkAccent,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        elevation: 1,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                        child: Text("SAVE",
                        style: TextStyle(fontSize: 15,
                        letterSpacing: 2.2,
                        color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
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
                      color: Colors.black.withOpacity(.5),
                    ),
                    child: Icon(Icons.keyboard_arrow_down,
                      color: Colors.white,
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
                  color: Colors.grey.withOpacity(.5),
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
                  color: Colors.black45.withOpacity(.5),
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
                  color: Colors.blueGrey.withOpacity(.5),
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

