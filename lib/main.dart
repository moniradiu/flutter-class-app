import 'package:flutter/material.dart';
import 'package:flutter_lecture_15/camera_storage.dart';
// ignore: unused_import
import 'package:image_picker/image_picker.dart';
// ignore: unused_import
import 'package:google_maps_flutter/google_maps_flutter.dart';
// ignore: unused_import
import 'package:location/location.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gogole maps Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: CameraStorage(),
    );
  }
}
