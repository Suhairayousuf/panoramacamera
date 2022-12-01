// // import 'dart:io';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:panorama/panorama.dart';
// // import 'package:image_picker/image_picker.dart';
// //
// //
// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({Key? key, required this.title}) : super(key: key);
// //
// //   final String title;
// //
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //   List<Image> panoImages = [
// //     Image.asset('assets/img.png'),
// //     Image.asset('assets/img_1.png'),
// //     Image.asset('assets/img_1.png'),
// //   ];
// //   File ?_imageFile;
// //   Size? size;
// //   ImagePicker picker = ImagePicker();
// //   int _panoId = 0;
// //   late final File pickedFile;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(widget.title),
// //       ),
// //       body: Panorama(
// //         zoom: 1,
// //         animSpeed: 1.0,
// //         child: _imageFile != null ? Image.file(pickedFile!) : Image.asset('assets/img.png'),
// //       ),
// //     floatingActionButton: FloatingActionButton(
// //         mini: true,
// //         onPressed: () async {
// //          pickedFile = (await picker.getImage(source: ImageSource.gallery)) as File;
// //           setState(() {
// //             if (pickedFile != null) {
// //               panoImages.add(Image.file(File(pickedFile.path)));
// //               _panoId = panoImages.length - 1;
// //             }
// //           });
// //         },
// //         child: Icon(Icons.panorama),
// //       ),
// //     );
// //   }
// // }
// import 'dart:io';
// import 'package:camera_camera/camera_camera.dart';
// import 'package:flutter/material.dart';
// import 'package:panorama/panorama.dart';
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final photos = <File>[];
//
//   void openCamera() {
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (_) => CameraCamera(
//
//               onFile: (Panorama) {
//
//                 photos.add(Panorama);
//                 Navigator.pop(context);
//                 setState(() {});
//               },
//             )));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(widget.title),
//       ),
//       body: GridView.builder(
//         gridDelegate:
//         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
//         itemCount: photos.length,
//         itemBuilder: (_, index) => Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             width: size.width,
//             height: size.height,
//             child: Panorama(
//
//
//               child: Image.file(
//                 photos[index],
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: openCamera,
//         child: Icon(Icons.camera_alt),
//       ),
//     );
//   }
// }