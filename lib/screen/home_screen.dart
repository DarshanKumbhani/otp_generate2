import 'dart:math';

import 'package:flutter/material.dart';
class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();


}
List col = [];


int p=0,q=0,r=0,s=0,t=0,u=0;


int? num ;

List c2 = [];
List c1 = [
  Colors.pink,
  Colors.pinkAccent,
  Colors.red,
  Colors.greenAccent,
  Colors.deepOrangeAccent,
  Colors.deepOrangeAccent,
  Colors.teal,
  Colors.amberAccent,
  Colors.lime,
  Colors.lightBlueAccent,
  Colors.redAccent,
  Colors.cyan
];

class _Home_screenState extends State<Home_screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Color Plaette\n",
                    style: TextStyle(
                      color: Color(0xff3BB3F9),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "   Generator",
                    style: TextStyle(
                      color: Color(0xff3BB3F9),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    )
                  )
                ]
              ),
            ),

            SizedBox(height: 20,),
            Container(
              width: 80,
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.teal,border: Border.all(color: Colors.black)),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  plate(c1[p]),
                  plate(c1[q]),
                  plate(c1[r]),
                  plate(c1[s]),
                  plate(c1[t]),
                  plate(c1[u]),
                ],
              ),
            ),
          GestureDetector(onTap: () {
          setState(() {
          Random rand = Random();
           p = rand.nextInt(12);

          q = rand.nextInt(12);
         while(q == p)
         {
           q = rand.nextInt(12);
         };

          r = rand.nextInt(12);
          while(r == p || r==q)
          {
          r = rand.nextInt(12);
          };

          s = rand.nextInt(12);
          while(s == p || s==q || s==r)
          {
          s = rand.nextInt(12);
          };

          s = rand.nextInt(12);
          while(e == p || e==q || e==r || e==s)
          {
            s = rand.nextInt(12);
          };

          u = rand.nextInt(12);
          while(u == p || u==q || u==r || u==s || u==e);
          {
            u = rand.nextInt(12);
          };
          c2 = [p,q,r,s,t,u];


          print ("$c2 $p $q $r $s $t $u");


          });



          },

          ),

            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(width: 2,color: Color(0xff3BB3F9),
                  )
              ),
              alignment: Alignment.center,
              child: Text(
                "Generate",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff3BB3F9)
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffFFFFFF),
    );
  }
  Widget plate(Color c1)
  {
    return Container(
      height: 20,
      width: 60,
      color: c1,
    );
  }
}
