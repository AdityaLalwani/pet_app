import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/screen2.dart';
import 'config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scalefactor = 1;
  bool isdraweropen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scalefactor),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isdraweropen ? 40.0 : 0.0),
        color: Colors.white,
      ),
      duration: Duration(milliseconds: 250),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isdraweropen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            setState(() {
                              xoffset = 0;
                              yoffset = 0;
                              scalefactor = 1;
                              isdraweropen = false;
                            });
                          })
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xoffset = 230;
                              yoffset = 150;
                              scalefactor = 0.6;
                              isdraweropen = true;
                            });
                          }),
                  Column(
                    children: [
                      Text("Location"),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: pc,
                          ),
                          Text("Ukarin")
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: pc),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: pc,
                  ),
                  hintText: "Search Pet",
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: listShadow,
                              borderRadius: BorderRadius.circular(10.0)),
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(left: 20),
                          child: Image.asset(
                            categories[index]['iconPath'],
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Text(categories[index]['name']),
                      ],
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: listShadow),
                            margin: EdgeInsets.only(top: 40),
                          ),
                          Align(
                            child: Image.asset("images/pet-cat2.png"),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 60, bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: listShadow,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: listShadow),
                            margin: EdgeInsets.only(top: 40),
                          ),
                          Align(
                            child: Hero(
                              child: Image.asset("images/pet-cat1.png"),
                              tag: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 60, bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: listShadow,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
