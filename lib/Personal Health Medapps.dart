import 'package:flutter/material.dart';
class RecordPage extends StatefulWidget {
  @override
  _RecordPageState createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  bool phrSelectState=true;
  bool healthSelectState=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu,
              color: Colors.black),
        ),
        title: Container(
          child: Row(
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 90,
                height: 50,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        actions: [
          Icon(Icons.map,
              size: 25,color: Colors.black),
          SizedBox(width: 20),
          Icon(Icons.notifications,
              size: 25,color: Colors.black),
          SizedBox(width: 20),
          Icon(Icons.drive_file_move,
              size: 25,color: Colors.black),
          SizedBox(width: 10),
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(blurRadius: 05,color: Colors.black),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        boxShadow: [
                          BoxShadow(blurRadius: 05,color: Colors.black),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,color: Colors.black),
                          hintText: "Search My Personal Health Record",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Welcome to my Personal Health Record",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey),
                  ),
                  SizedBox(height: 15),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   InkWell(
                     onTap: (){
                       setState(() {
                         phrSelectState=true;
                         healthSelectState=false;
                       });
                     },
                     child: Column(
                       children: [
                         Text("My PHR",
                         style: TextStyle(
                           fontSize: 15,
                         fontWeight: FontWeight.bold,
                         color: phrSelectState == true
                         ? Colors.black
                         :Colors.grey,
                         ),),
                         SizedBox(height: 05),
                         Container(
                           height: 3,
                           width: 30,
                           color: phrSelectState == true
                             ? Colors.pinkAccent
                               :Colors.transparent,
                         ),
                       ],
                     ),
                   ),
                   SizedBox(width: 30),
                   InkWell(
                     onTap: (){
                       setState(() {
                         phrSelectState = false;
                         healthSelectState = true;
                       });
                     },
                     child: Column(
                       children: [
                         Text("My Health Summary",
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.bold,
                           color: healthSelectState == true
                             ? Colors.black
                               :Colors.grey,
                         ),
                         ),
                         SizedBox(height: 5),
                         Container(
                           height: 3,
                           width: 30,
                           color: healthSelectState == true
                             ? Colors.pinkAccent
                               :Colors.transparent,
                         )
                       ],
                     ),
                   )
                 ],
               ),
                ],
              ),
            ),
            SizedBox(height: 30),
            if(healthSelectState == true)
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45,vertical: 25),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow: [
                        BoxShadow(blurRadius: 02,color: Colors.black),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child:Padding(
                    padding: const EdgeInsets.only(top: 0,left: 15),
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage("assets/images/prescription.png"),
                          )
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,left: 110,
                  child: Text("Prescription",
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Positioned(
                  top: 30,
                  right: 70,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.share,size: 30,color: Colors.black,),
                  ),
                ),
                Positioned(
                    bottom: 18,
                    right: 45,
                    child: FlatButton(
                      onPressed: (){},
                      child: Text("View",
                        style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )),
                      color: Colors.pinkAccent,
                    )),
              ],
            ),
            SizedBox(height: 0),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45,vertical: 25),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow: [
                        BoxShadow(blurRadius: 02,color: Colors.black),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child:Padding(
                    padding: const EdgeInsets.only(top: 0,left: 15),
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage("assets/images/summary.png"),
                          )
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,left: 110,
                  child: Text("Patient Summary",
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Positioned(
                  top: 30,
                  right: 70,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.share,size: 30,color: Colors.black,),
                  ),
                ),
                Positioned(
                    bottom: 18,
                    right: 45,
                    child: FlatButton(
                      onPressed: (){},
                      child: Text("View",
                        style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )),
                      color: Colors.pinkAccent,
                    )),
              ],
            ),
            SizedBox(height: 0),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45,vertical: 25),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      boxShadow: [
                        BoxShadow(blurRadius: 02,color: Colors.black),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child:Padding(
                    padding: const EdgeInsets.only(top: 0,left: 15),
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage("assets/images/diagnostic.png"),
                          )
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,left: 110,
                  child: Text("Diagnostic",
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Positioned(
                  top: 30,
                  right: 70,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.share,size: 30,color: Colors.black,),
                  ),
                ),
                Positioned(
                    bottom: 18,
                    right: 45,
                    child: FlatButton(
                      onPressed: (){},
                      child: Text("View",
                        style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )),
                      color: Colors.pinkAccent,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
