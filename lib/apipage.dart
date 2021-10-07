/*import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DemoApi extends StatefulWidget {
  @override
  _DemoApiState createState() => _DemoApiState();
}

class _DemoApiState extends State<DemoApi> {

    //String stringResponse;
     List listResponse;

   Future fetchData()async {
     http.Response response;
     response = await http.get(Uri.parse("https://thegrowingdeveloper.org/apiview?id=4"));
     if (response.statusCode == 200) {
       setState(() {
         listResponse = json.decode(response.body);
       });
       return listResponse;
     }else{
       throw Exception('Failed to Load Album');
     }
   }
     @override
     void initState(){
       fetchData();
       super.initState();
     }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("DemoApi",
        style: TextStyle(fontSize: 18,color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body:listResponse==null?Container(): Text(listResponse[3].toString(),
      style: TextStyle(fontSize: 39,color: Colors.black,letterSpacing: 2.0,fontWeight: FontWeight.bold),
      ),
    );
  }
}


*/
