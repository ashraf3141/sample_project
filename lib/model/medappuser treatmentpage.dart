import 'package:flutter/material.dart';

class Treatment extends StatefulWidget {
  @override
  _TreatmentState createState() => _TreatmentState();
}

class _TreatmentState extends State<Treatment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,size: 25),
        ),
        title: Text("My Treatment Summary",
        style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.pinkAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ))
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.share,
                color: Colors.black,
                  size: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
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
                          radius: 45,
                        ),
                        SizedBox(width: 15),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: RichText(
                            text:TextSpan(
                              text: "Psychotherapist",
                              style: TextStyle(fontSize: 18,color: Colors.pinkAccent,fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                  text:"\nMy Specialist : Dr. Rajesh",
                                  style: TextStyle(fontSize: 15,color: Colors.black54),
                                ),
                                TextSpan(
                                  text:"\nVisited date : 20/01/2022",
                                  style: TextStyle(fontSize: 15,color: Colors.black54),
                                ),
                                TextSpan(
                                  text:"\nTime : 9:30 Am",
                                  style:TextStyle(fontSize: 15,color: Colors.black54),
                                ),
                                TextSpan(
                                  text:"\nReport Type:MRI",
                                  style:TextStyle(fontSize: 15,color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Report Details",
                style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 20),
              child: Row(
                children: [
                  Icon(Icons.local_hospital,
                  size: 25,
                  color: Colors.pinkAccent),
                  SizedBox(width: 10),
                  Text("Prescription",
                  style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow: [
                        BoxShadow(blurRadius: 05,color: Colors.black),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      image: DecorationImage(
                        image: AssetImage("assets/images/doctor2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 30,
                  child: IconButton(
                    onPressed: (){
                    },
                    icon: Icon(Icons.download_sharp,
                    size: 30,
                    color: Colors.pinkAccent,),
                  ),
                ),
                Positioned(
                  top: 35,
                  left: 150,
                  child: Text("Uploaded By : Pateint",
                  style: TextStyle(fontSize: 15,fontFamily: "Medium",fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                Positioned(
                  top: 60,
                  left: 150,
                  child: Text("Date Time : ",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                Positioned(
                  bottom:4,
                  right: 20,
                  child: FlatButton(
                    onPressed: (){},
                    child: Text("View",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                    color: Colors.pinkAccent,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 20),
              child: Row(
                children: [
                  Icon(Icons.image,
                      size: 25,
                      color: Colors.pinkAccent),
                  SizedBox(width: 10),
                  Text("Diagnostic Image",
                    style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow: [
                        BoxShadow(blurRadius: 05,color: Colors.black),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      image: DecorationImage(
                        image: AssetImage("assets/images/doctor1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 30,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.download_sharp,
                      size: 30,
                      color: Colors.pinkAccent,),
                  ),
                ),
                Positioned(
                  top: 35,
                  left: 150,
                  child: Text("Uploaded By : Doctor",
                    style: TextStyle(fontSize: 15,fontFamily: "Medium",fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                Positioned(
                  top: 60,
                  left: 150,
                  child: Text("Date Time : ",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                Positioned(
                  bottom:4,
                  right: 20,
                  child: FlatButton(
                    onPressed: (){},
                    child: Text("View",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                    color: Colors.pinkAccent,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 20),
              child: Row(
                children: [
                  Icon(Icons.file_copy,
                      size: 25,
                      color: Colors.pinkAccent),
                  SizedBox(width: 10),
                  Text("Diagnostic Report",
                    style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow: [
                        BoxShadow(blurRadius: 05,color: Colors.black),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      image: DecorationImage(
                        image: AssetImage("assets/images/doctor2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 30,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.download_sharp,
                      size: 30,
                      color: Colors.pinkAccent,),
                  ),
                ),
                Positioned(
                  top: 35,
                  left: 150,
                  child: Text("Uploaded By : Doctor",
                    style: TextStyle(fontSize: 15,fontFamily: "Medium",fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                Positioned(
                  top: 60,
                  left: 150,
                  child: Text("Date Time : ",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                Positioned(
                  bottom:4,
                  right: 20,
                  child: FlatButton(
                    onPressed: (){},
                    child: Text("View",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                    color: Colors.pinkAccent,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 20),
              child: Row(
                children: [
                  Icon(Icons.help,
                      size: 25,
                      color: Colors.pinkAccent),
                  SizedBox(width: 10),
                  Text("Select Opinion",
                    style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Container(
                padding: EdgeInsets.all(15),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [BoxShadow(blurRadius: 05,color: Colors.black)],
                ),
                child: Text("Online Grammar and Writing Checker To Help you Deliver Impeccable, Mistake-free Writing Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For YourSelf!",
                textAlign: TextAlign.justify,),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
