import 'dart:math';

import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}



class _Home_screenState extends State<Home_screen> {
  List colore = [
    Colors.purple,
    Colors.lightGreenAccent,
    Colors.lightGreen,
    Colors.grey,
    Colors.green,
    Colors.deepPurple,
    Colors.deepPurpleAccent,
    Colors.purpleAccent,
    Colors.redAccent,
    Colors.pink,
    Colors.amberAccent,
    Colors.lime,
    Colors.indigo,
    Colors.teal,
    Colors.indigoAccent,
    Colors.tealAccent
  ];
  int plate = 0;
  int plate2 = 1;
  int plate3 = 2;
  int plate4 = 3;
  int plate5 = 4;
  int plate6 = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Palette"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Color Palette\n   Generator",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3BB3F9)
              ),
            ),
            SizedBox(height: 100,),
            Container(
                height: 60,
                width: 100,
                decoration: BoxDecoration(
                    color: colore[plate],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21)
                    )
                )
            ),
            Container(
              height: 60,
              width: 100,
              color: colore[plate2],
            ),
            Container(
              height: 60,
              width: 100,
              color: colore[plate3],
            ),
            Container(
              height: 60,
              width: 100,
              color: colore[plate4],
            ),
            Container(
              height: 60,
              width: 100,
              color: colore[plate5],
            ),
            Container(
                height: 60,
                width: 100,
                decoration: BoxDecoration(
                    color: colore[plate6],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21)
                    )
                )
            ),
            SizedBox(height: 60,),
            InkWell(
              onTap: (){
                var co = Random();
                setState(() {
                  plate = co.nextInt(10);
                  plate2 = co.nextInt(10);
                  plate3 = co.nextInt(10);
                  plate4 = co.nextInt(10);
                  plate5 = co.nextInt(10);
                  plate6 = co.nextInt(10);
                });
              },
              child: Container(
                height: 46,
                width: 215,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color(0xFF3BB3F9,),width: 3)
                ),
                alignment: Alignment.center,
                child: Text(
                  "Generate",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3BB3F9,)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
