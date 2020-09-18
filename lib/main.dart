import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Bottom Navigation Bar",
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.red
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.white,
        title: Text("Flutter App",style: TextStyle(
         // color: Colors.black,
        ),),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.red[900],
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("This Is Demo Page ")
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black,
        height: 50.0,
        backgroundColor: Colors.red[900],
        buttonBackgroundColor: Colors.black,
        items: <Widget>[
          Icon(Icons.verified_user_rounded,size: 20,color: Colors.white,),
          Icon(Icons.add,size: 20,color: Colors.white,),
          Icon(Icons.list,size: 20,color: Colors.white,),
          Icon(Icons.home_outlined,size: 20,color: Colors.white,),
          Icon(Icons.favorite,size: 20,color: Colors.white,),

        ],
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(
          microseconds: 200
        ),
        onTap: (index){
          debugPrint("Cuurent Index is $index");
        },
      ),
    );
  }
}
