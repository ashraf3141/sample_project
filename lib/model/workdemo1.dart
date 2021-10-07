import 'package:flutter/material.dart';
import 'package:sample_project/hoods.dart';

class Workhealth extends StatefulWidget {
  @override
  _WorkhealthState createState() => _WorkhealthState();
}

class _WorkhealthState extends State<Workhealth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              fit: StackFit.loose,
              overflow: Overflow.visible,
              children: [
                _buildcontainer(),
                _buildgreetings(),
                _buildemoji(),
              ],
            ),
            SizedBox(height: 50),
            _buildNotification(),
            SizedBox(height: 20),
            _buildtitle("Your Next Appointment","See All"),
            SizedBox(height: 20),
            _buildcard(),
            SizedBox(height: 20),
            _buildtitle("Specialists in Your Area", "See All"),
            SizedBox(height: 20),
            _builddoctor(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  _buildcontainer() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
    );
  }

  _buildgreetings() {
    return Positioned(
      top: 50,
      left: 25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hi Buddy",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
          SizedBox(height: 10),
          Text("How Are You Feeling Today ?",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
        ],
      ),
    );
  }

  _buildemoji() {
    return Positioned(
      bottom: -45,
       child: Padding(
         padding: const EdgeInsets.only(left: 20),
         child: Container(
           width: MediaQuery.of(context).size.width-40,
           height: 100,
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.all(Radius.circular(25)),
             boxShadow: [BoxShadow(color: Colors.black,blurRadius: 03)],
           ),
           child: Hoods(),
         ),
       ),
    );
  }

  _buildNotification() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Container(
        padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: ListTile(
          leading: Icon(Icons.calendar_today_sharp,color: Colors.white,),
          title: Text("Your Visit With \nDr.Peter Parker",
          style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold)),
          trailing: OutlineButton(
            onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
            borderSide: BorderSide(width: 2,color: Colors.white),
            child: Text("Review & Add Notes",
            style: TextStyle(fontSize: 12,color: Colors.white),),
          ),
        ),
      ),
    );
  }

  _buildtitle(title,subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 18),),
          Text(subtitle,style: TextStyle(fontWeight:FontWeight.bold,color: Colors.red,fontSize: 18),)
        ],
      ),
    );
  }

  _buildcard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow:  [BoxShadow(blurRadius: 05,color: Colors.black),]
        ),
        child: Column(
      children: [
      Row(
      mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 05,color: Colors.black)],
                borderRadius: BorderRadius.all(Radius.circular(25)),
                image: DecorationImage(
                  image: AssetImage("assets/images/doctor1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          Padding(
            padding: const EdgeInsets.only(top: 20 ,left: 5),
            child: RichText(
                text: TextSpan(
                  text: "Dr.Scarelett",
                  style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "\nSunday,October 7th at5.00PM",
                      style: TextStyle(fontSize: 15,color: Colors.black87,fontFamily: "Medium"),
                    ),
                    TextSpan(
                      text: "\n8th Cross Street",
                      style: TextStyle(fontSize: 15,color: Colors.black87,fontFamily: "Medium"),
                    ),
                    TextSpan(
                      text: "\nC4 Aveneu chennai",
                      style: TextStyle(fontSize: 15,color: Colors.black87,fontFamily: "Medium"),
                    ),
                  ],
                ),
            ),
          ),
        ],
      ),
        SizedBox(height: 10),
        Divider(height: 1,color: Colors.grey,thickness: 1,),
        Padding(
          padding: const EdgeInsets.only(top: 5,bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _iconbuilder(Icons.calendar_today_sharp,"Calendar"),
              _iconbuilder(Icons.cancel, "Cancel"),
              _iconbuilder(Icons.check_circle_outline, "Check In"),
              _iconbuilder(Icons.location_on_sharp, "Directions"),
            ],
          ),
        ),
      ],
      ),
      ),
    );
  }

  _iconbuilder(icon,title) {
    return Column(
      children: [
        IconButton(
          onPressed: (){},
          icon: Icon(icon),
        ),
        SizedBox(height: 1),
        Text(title)
      ],
    );
  }

  _builddoctor() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical:5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(blurRadius: 05,color: Colors.black),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/doctor2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(
                    text: TextSpan(
                      text: "Dr.Williams",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),
                      children: [
                        TextSpan(
                          text: "\nWednesday,Nov 6th at 8.00 AM",
                          style: TextStyle(fontSize: 15,fontFamily: "Medium",color: Colors.grey),
                        ),
                        TextSpan(
                          text: "\nMain Road,Pondicherry",
                          style: TextStyle(fontSize: 15,fontFamily: "Medium",color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: (){},
                  child: Text("Book",
                    style: TextStyle(fontSize: 12,color: Colors.white),),
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                ),
                SizedBox(width: 20),
                FlatButton(
                  onPressed: (){},
                  child: Text("Cancel",
                    style: TextStyle(fontSize: 12,color: Colors.white),),
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
