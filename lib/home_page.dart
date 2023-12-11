import 'package:flutter/material.dart';

class Hotil_Page extends StatefulWidget {
  const Hotil_Page({super.key});

  @override
  State<Hotil_Page> createState() => _Hotil_PageState();
}

class _Hotil_PageState extends State<Hotil_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/hotels/5.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.4),
                  ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "What kind of hotel do you need?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintText: "Search for hotels...",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 18)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Best Hotels",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem(image: "assets/hotels/7.jpg", title: " Maqom Plaza"),
                  makeItem(
                    image: "assets/hotels/8.jpg",
                    title: "Shakhrisabz Star Hotel",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem(image: "assets/hotels/8.jpg", title: " Maqom Plaza"),
                  makeItem(
                    image: "assets/hotels/7.jpg",
                    title: "Shakhrisabz Star Hotel",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1.4 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.2),
              ])),
          child: Container(
            padding: EdgeInsets.all(5),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
