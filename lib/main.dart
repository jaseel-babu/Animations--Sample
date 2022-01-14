import 'dart:async';

import 'package:flutter/material.dart';

import 'view/halfcircle.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var oriantion = MediaQuery.of(context).orientation;
    var maxWidth = MediaQuery.of(context).size.width;
    var maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            oriantion == Orientation.portrait || maxWidth <= 640
                ? Expanded(child: firsthalf())
                : SizedBox(),
            oriantion == Orientation.portrait || maxWidth <= 640
                ? Expanded(
                    child: Column(
                      children: [
                        Imagelogin(),
                        field(),
                      ],
                    ),
                  )
                : Expanded(
                    child: Row(
                      children: [
                        Imagelogin(),
                        field(),
                      ],
                    ),
                  ),
            oriantion == Orientation.portrait || maxWidth <= 640
                ? ClipPath(
                    clipper: DrawerClip2(),
                    child: Container(
                      height: 200,
                      width: maxWidth,
                      decoration: BoxDecoration(
                        color: Color(0xff4F68BF),
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }

  field() {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.red)),
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.red)),
          ),
        ),
      ),
    );
  }

  Imagelogin() {
    return Expanded(
      child: Image.asset(
        "assets/Mobile login.gif",
      ),
    );
  }
}

class firsthalf extends StatefulWidget {
  const firsthalf({Key? key}) : super(key: key);

  @override
  _firsthalfState createState() => _firsthalfState();
}

class _firsthalfState extends State<firsthalf>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    Timer(Duration(seconds: 2), () => animationController!.forward());

    super.initState();
  }

  @override
  void dispose() {
    animationController!.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationController!,
      child: ClipPath(
        clipper: DrawerClip(),
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xff4F68BF)),
        ),
      ),
    );
  }
}
