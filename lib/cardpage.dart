import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child:Container(
              child:FittedBox(
              child: Material(
                color: Colors.white,
                elevation: 10.0,
                borderRadius: BorderRadius.circular(25),
                child: Row(
                  children: [
                    Container(
                      child: myDetailsContainer(),
                    ),
                    Container(
                      height: 250,
                      width: 250,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25.0),
                        child: Image(
                          height: 200,
                          width: 200,
                          image: AssetImage('assets/images/tour5.jpg'),
                          fit: BoxFit.fill,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            )
          )
        ],
      ),
    );
  }
}
Widget myDetailsContainer(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Container(
          child: Text("New York",
          style: TextStyle(fontSize: 22,color: Colors.grey,fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text("3.5",
                style: TextStyle(color: Colors.black,fontSize: 18),),
              ),
              Container(
                child: Icon(
                  Icons.star,color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

