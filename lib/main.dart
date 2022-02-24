import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'OnHover.dart';
import 'package:hoverover/hoverover.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: Text("Hover Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HoverOver(
            builder: (isHovered) {
              /// change color on hover
              final color = isHovered ? Colors.orange : Colors.redAccent;
              return PhysicalModel(
                color: Colors.white,
                elevation: isHovered ? 16 : 0,
                child: Container(
                    height: 50,
                    width: 200,
                    color: color,
                    child: const Center(
                      child: Text("Hoverover me"),
                    )),
              );
            },
            /// animation duration
            animationDurationInMilliseconds: 600,
            /// translation of x axis
            translateXAxis: 7,
            /// translation of y axis
            translateYAxis: 15,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      )
    );
  }
}