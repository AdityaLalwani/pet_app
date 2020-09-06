import 'package:flutter/material.dart';
import 'package:pet_app/config.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.share_sharp,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        //Navigator.pop(context);
                      }),
                ],
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                child: Image.asset("images/pet-cat1.png"),
                tag: 1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                boxShadow: listShadow,
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 150,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: pc,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Text(
                          "Adoption",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: pc,
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
            ),
          ),
        ],
      ),
    );
  }
}
