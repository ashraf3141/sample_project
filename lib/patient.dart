import 'dart:io';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PatientList extends StatefulWidget {
  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
  /*File _image;
  Future getImage() async{
    final image = await ImagePicker.pickImage(source:ImageSource.camera);

    setState(() {
      _image =image;
    });

  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(blurRadius: 05, color: Colors.black),
                ],
              ),

              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                    Text("View Patient List",
                      style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ]
              ),
            ),
            SizedBox(height: 15),
            _buildPatientList(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('prescription',
                style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
            ),//heading
            _buildSearchField(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/upload.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(blurRadius: 05,color: Colors.black),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                color: Colors.black54,
                child: Text('Upload',
                style: TextStyle(fontSize: 18,color: Colors.white),),
              ),
            ),
          //  _image == null ? Text("Image is Not Loaded"): Image.file(_image),
          /*  Align(
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                onPressed: getImage,
                tooltip: 'Pick Image',
                child: Icon(Icons.camera_alt),
              ),*/
          ],
        ),
      ),
    );
  }

  _buildPatientList() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(blurRadius: 05),
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
                  backgroundImage: AssetImage('assets/images/dp.jpg'),
                  radius: 35,
                ),
                SizedBox(width: 15.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Patient name: Arun\n",
                        style: TextStyle(fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                        height: 1.3,
                        ),
                        children: [
                          TextSpan(
                            text:"Age: 22",
                            style: TextStyle(fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: "\nAmount: 2000",
                            style: TextStyle(fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: "\nDescription:",
                            style: TextStyle(fontSize: 15,
                            color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: FlatButton(
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Text('Book',
                              style: TextStyle(fontSize: 14,color: Colors.white),

                            ),
                            color: Colors.black54,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0.0),
                          child: FlatButton(
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Text('cancel',
                              style: TextStyle(fontSize: 14,color: Colors.white),

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
          ],
        ),
      ),
    );
  }

  _buildSearchField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(blurRadius: 05),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.search,color: Colors.black),
              hintText: "Search",
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}