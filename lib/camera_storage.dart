import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CameraStorage extends StatefulWidget {
  @override
  _CameraStorageState createState() => _CameraStorageState();
}

class _CameraStorageState extends State<CameraStorage> {
  // ignore: unused_field
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        print(_image);
      } else {
        print("No Image");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
      ),
      body: Center(
        child: Container(
            child:
                _image == null ? Text("Image Not Found") : Image.file(_image)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getImage();
        },
        child: Icon(Icons.add),
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
