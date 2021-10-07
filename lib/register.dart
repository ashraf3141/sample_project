import 'package:flutter/material.dart';
import 'package:sample_project/constants.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.contain,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
                  boxShadow: [
                    BoxShadow(blurRadius: 05,color: Colors.black),
                  ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
                child: Text(regstring,
                style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(blurRadius: 05),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "name",
                    prefixIcon: Icon(Icons.person,color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(blurRadius: 05),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "UserName",
                    prefixIcon: Icon(Icons.person,color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(blurRadius: 05),
                  ],
                ),
                child:TextField(
                  decoration: InputDecoration(
                    hintText: "Phone no",
                    prefixIcon: Icon(Icons.phone_android,color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(blurRadius: 05),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock,color:Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
            child: Container(
              color: Colors.white,
              height: 50,
              width: double.infinity,
              child: FlatButton(
                onPressed: (){},
                child: Text(regstring,
                style: TextStyle(fontSize: 20,color: Colors.white),),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                color: Colors.pinkAccent,
              ),
            ),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Already have an Account",
                style: TextStyle(fontSize: 18,color: Colors.black),
                ),
                FlatButton(
                  onPressed: (){},
                  child: Text("Register",
                  style: TextStyle(fontSize: 18,color: Colors.pinkAccent),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
