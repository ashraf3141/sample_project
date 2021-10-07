import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageGrid extends StatefulWidget {
  @override
  _PageGridState createState() => _PageGridState();
}

class _PageGridState extends State<PageGrid> {
  final List<String> _listItem = [
    "assets/images/tour2.jpg",
    "assets/images/tour4.jpg",
    "assets/images/tour5.jpg",
    "assets/images/tour6.jpg",
    "assets/images/tour2.jpg",
    "assets/images/tour4.jpg",
    "assets/images/tour5.jpg",
    "assets/images/tour6.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text('Home',
          style:TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0,
        leading: Icon(Icons.menu,
            color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(blurRadius: 05,color: Colors.black),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Text("0",style: TextStyle(color: Colors.black),)),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/tour1.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(blurRadius: 05,
                    color: Colors.black),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
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
                            hintText: "Search",
                            prefixIcon: Icon(Icons.search,color: Colors.black),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
                child:  GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(20),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: _listItem.map((item) => Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage(item),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )).toList(),
                ),
            ),

          ],
        ),
      ),
    );
  }
}
