import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';


class ImagePeaker extends StatefulWidget {
  const ImagePeaker({Key? key}) : super(key: key);

  @override
  State<ImagePeaker> createState() => _ImagePeakerState();
}

class _ImagePeakerState extends State<ImagePeaker> {
  // This is the file that will be used to store the image
  File? _image;

  // This is the image picker
  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
    await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: _openImagePicker,
          child: _image!=null?CircleAvatar(
            backgroundImage: FileImage(_image!),
            radius: 50,
          )
              : CircleAvatar(
             radius: 50,
              child: Text('upload image')),
          //     :CircleAvatar(
          //   radius: 60,
          // ),
        );
  }
}