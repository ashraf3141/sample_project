import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu, color: Colors.black),
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
            Icon(Icons.shopping_cart, color: Colors.black),
          ],
        ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Doctor",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                fontFamily: "Medium",
                fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      height: MediaQuery.of(context).size.height / 5,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(50,10, 0, 0 ),
                            padding: EdgeInsets.all(0),
                            height: MediaQuery.of(context).size.height / 8,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Dr Lily Ma MBA"),
                                          Text("Specialist: Cardiologist"),
                                        ]),
                                    trailing: Icon(Icons.star),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.timelapse),
                                      Text("1:00 AM - 12:00 PM"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              top:15,
                              left:20,
                              child: CircleAvatar()),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home,
            color: Colors.white,
            ),
            backgroundColor: Colors.pinkAccent,

          ),
          BottomNavigationBarItem(
            title: Text("Books"),
            icon: Icon(Icons.book,
              color: Colors.white,
            ),
            backgroundColor: Colors.pinkAccent,
          ),
          BottomNavigationBarItem(
            title: Text("Cart"),
            icon: Icon(Icons.shopping_cart,
              color: Colors.white,
            ),
            backgroundColor: Colors.pinkAccent,
          ),
          BottomNavigationBarItem(
            title: Text("Hospital"),
            icon: Icon(Icons.local_hospital,
              color: Colors.white,
            ),
            backgroundColor: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }
}
