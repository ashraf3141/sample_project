import 'package:flutter/material.dart';

class MySummary extends StatefulWidget {
  @override
  _MySummaryState createState() => _MySummaryState();
}

class _MySummaryState extends State<MySummary> {
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
          title: Text("My Summary",
            style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.pinkAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ))
      ),
      body: Column(
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
                      image: AssetImage("assets/images/tour8.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 45,
                left: 150,
                child: Text("Name : Patient Name",
                  style: TextStyle(fontSize: 15,fontFamily: "Medium",fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              Positioned(
                top: 70,
                left: 150,
                child: Text("Report Type : Prescription",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
            ],
          ),
          SizedBox(height: 10),
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
          SizedBox(height: 20),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                  itemCount: 3,
              itemBuilder: (context,index){
                    return Container(
                      height: MediaQuery.of(context).size.height / 5,
                      child:  Stack(
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
                            top: 35,
                            left: 150,
                            child: Text("Uploaded By : Patient/Doctor",
                              style: TextStyle(fontSize: 15,fontFamily: "Medium",fontWeight: FontWeight.bold,color: Colors.black),),
                          ),
                          Positioned(
                            top: 60,
                            left: 150,
                            child: Text("Date Time : ",
                              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 18,
                            child: FlatButton(
                              onPressed: (){},
                              child: Text("View",
                              style: TextStyle(fontSize: 18,color: Colors.white),),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )),
                              color: Colors.pinkAccent,
                            ),
                          )
                        ],
                      ),
                    );
              },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
