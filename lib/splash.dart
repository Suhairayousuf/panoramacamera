// import 'dart:async';
// import 'package:flutter/material.dart';
//
//
// import 'cam1.dart';
//
//
// class Splash extends StatefulWidget {
//   @override
//   VideoState createState() => VideoState();
// }
//
//
//
// class VideoState extends State<Splash> with SingleTickerProviderStateMixin{
//
//   var _visible = true;
//
//   AnimationController? animationController;
//   Animation? animation;
//
//   startTime() async {
//     var _duration = new Duration(seconds: 2);
//     return new Timer(_duration, navigationPage);
//   }
//
//   void navigationPage() {
//     Navigator.of(context).push(
//         MaterialPageRoute(builder: (context) => MyHomePage(title: 'Panorama Demo',)));
//   }
//
//   @override
//   void initState() {
//     super.initState();
//
//
//
//     animationController = AnimationController(
//         vsync: this, duration:  Duration(seconds: 1));
//     // animation =
//     //  CurvedAnimation(parent: animationController, curve: Curves.easeOut);
//
//     animation?.addListener(() => this.setState(() {}));
//     animationController!.forward();
//
//     setState(() {
//       _visible = !_visible;
//     });
//     startTime();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           new Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//
//               Padding(padding: EdgeInsets.only(bottom: 30.0),child: Image.asset('assets/img.png',height: 25.0,fit: BoxFit.scaleDown,))
//
//             ],),
//           new Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//                Image.asset(
//                 'assets/img.png',
//                 width:300,
//                 height: 300,
//                )],
//           ),
//         ],
//       ),
//     );
//   }
// }
