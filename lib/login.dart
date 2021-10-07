import 'dart:convert';
import 'dart:io' show Platform;
import 'dart:convert' as convert;
import 'package:http/http.dart'as http;
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/constants.dart';
import 'package:sample_project/homescreen.dart';
import 'package:sample_project/model/apimodel.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(blurRadius: 05,
                  color: Colors.black),
                ],
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 20),
                child: Text(logstring,
                style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(blurRadius: 05),
                  ],
                ),
                child: TextFormField(
                  controller: emailController,
                  onChanged: (String value){},
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email Id",
                    prefixIcon: Icon(Icons.person,color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 05,
                      color: Colors.black,
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: passwordController,
                  onChanged: (String value){},
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: " Password",
                    prefixIcon: Icon(Icons.lock,
                    color: Colors.black,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: (){},
              child: Text(forgotText,
              style: TextStyle(fontSize: 15,color: Colors.black),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
              child: Container(
                height: 50,
                width: double.infinity,
                child: FlatButton(
                    onPressed: (){

                    },
                    child: Text(login,style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Colors.pinkAccent,
                  ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Don't have an account",
                style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                FlatButton(
                  onPressed: (){},
                  child: Text("Register",style: TextStyle(fontSize: 18,color: Colors.pinkAccent),
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
