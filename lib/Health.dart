import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/constants.dart';
import 'package:sample_project/hoods.dart';

class HealthPage extends StatefulWidget {
  @override
  _HealthPageState createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  int _selectedIndex = 0;

  void onTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              overflow: Overflow.visible,
              children: [
                _buildBackgroundCover(), //container with background bluecolor
                _buildGreetings(), //HI Ashraf, how are you feeling today
                _buildHoodsHolder(),// feeling happy sad emo
              ],
            ),
            SizedBox(height: 50.0),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  _buildNotificationCard(),
                  //Card of Visit Doctor
                  _buildNextAppointmentTitle("your next Appointment"),
                  //Text Appoint
                  _buildNextApppointmentInfo(),
                  //Container card and details
                  _buildNextAppointmentTitle('Specialist in Your Area'),
                  //Text Specialist
                  _buildAreaSpeacialLists(),
                  //Container card and book
                  _buildDoctorLists(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home,
              color: Colors.black87,
            ),
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            title: Text("Books"),
            icon: Icon(Icons.book,
              color: Colors.black87,
            ),
          ),
          BottomNavigationBarItem(
            title: Text("Cart"),
            icon: Icon(Icons.shopping_cart_rounded,
              color: Colors.black87,
            ),
          ),
          BottomNavigationBarItem(
            title: Text("Hospital"),
            icon: Icon(Icons.local_hospital,
              color: Colors.black87,
            ),
          ),
        ],
        onTap: onTapped,
      ),
    );
  }

  _buildBackgroundCover() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          )
      ),
    );
  }

  _buildGreetings() {
    return Positioned(
      left: 20.0,
      bottom: 90.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hi Ashraf",
            style: greetingTitleStyle,
          ),
          SizedBox(height: 10),
          Text("How Are You Feeling Today?",
            style: greetingSubTitle,
          ),
        ],
      ),
    );
  }

  _buildHoodsHolder() {
    return Positioned(
      bottom: -45,
      child: Container(
        height: 100,
        width: MediaQuery
            .of(context)
            .size
            .width - 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(blurRadius: 05, color: Colors.black),
          ],
        ),
        child: Hoods(),
      ),
    );
  }

  _buildNotificationCard() {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(25),
      ),
      child: ListTile(
        leading: Icon(Icons.calendar_today_outlined,
          color: Colors.white,
          size: 30,
        ),
        title: Text("Your visit with \nDr.Jacquline",
          style: notificationTitleStyle,
        ),
        trailing: OutlineButton(
          onPressed: () {},
          color: Colors.transparent,
          borderSide: BorderSide(
            color: Colors.white, width: 1.0,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)
          ),
          child: Text(
            "Review & Add Notes",
            style: notificationButtonStyle,
          ),
        ),
      ),
    );
  }

  _buildNextAppointmentTitle(title) {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: nextAppointmentStyle),
          Text("See All", style: nextAppointmentSubTitleStyle)
        ],
      ),
    );
  }

  _buildNextApppointmentInfo() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 18.0),
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
                backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                radius: 35,
              ),
              SizedBox(width: 12.0),
              RichText(
                text: TextSpan(
                  text: "Dr.Scarelett",
                  style: appointmentTextstyle,
                  children: [
                    TextSpan(
                      text: "\nsunday, June 5th at 8:00AM",
                      style: appointmentDateStyle,
                    ),
                    TextSpan(
                      text: "\n8th Cross Street\nC4 Avenue Pondicherry",
                      style: appointmentAvenueStyle,
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
              _iconBuilder(Icons.check_circle, 'Check IN',),
              _iconBuilder(Icons.timelapse_sharp, 'Cancel'),
              _iconBuilder(Icons.calendar_today, 'Calendar'),
              _iconBuilder(Icons.compass_calibration, 'Directions'),
            ],
          ),
        ],
      ),
    );
  }

  _iconBuilder(icon, title) {
    return Column(
      children: [
        IconButton(
          onPressed: () {

          },
          icon: Icon(icon),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
            title,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            )
        ),
      ],
    );
  }

  _buildAreaSpeacialLists() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(blurRadius: 05,
            color: Colors.black,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage("assets/images/doctor2.jpg"),
                radius: 60,
              ),
              SizedBox(width: 15.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Wellness\n',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 1.3,
                      ),
                      children: [
                        TextSpan(
                          text: "Dr Gabriella",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: "\nPopular Pharma Limited",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "\nDermatologist \nSan Fransisco CA",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.0),
                  RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                        constraints: BoxConstraints(
                          minHeight: 36,
                          minWidth: 85,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Book Visit",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildDoctorLists() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(blurRadius: 05,
            color: Colors.black,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                radius: 60,
              ),
              SizedBox(width: 15.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Phsychotherapist\n",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.3,
                      ),
                      children: [
                        TextSpan(
                          text: "Dr Juline Fernandez",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: "\n Appolo pharma Limited",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "\n Specialist of Psycotist \n California",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Text('Book visit',
                        style: TextStyle(fontSize: 14, color: Colors.white),

                      ),
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

}
