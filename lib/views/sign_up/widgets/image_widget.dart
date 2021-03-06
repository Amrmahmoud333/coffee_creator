import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../sizer.dart';

class ImageWidget extends StatefulWidget {
  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  File? image;
  late Sizer s;

  Future pickImage(ImageSource imageSource) async {
    try {
      final image = await ImagePicker().pickImage(
        source: imageSource,
        maxHeight: 100,
        maxWidth: 100,
      );
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    s = Sizer(context: context);
    return Center(
      child: image != null
          ? setImageBuilder(
              Image.file(
                this.image!,
                width: s.h(169),
                height: s.h(169),
                fit: BoxFit.fill,
              ),
            )
          : setImageBuilder(
              Image.asset(
                'assets/images/profile.png',
                width: s.h(169),
                height: s.h(169),
                fit: BoxFit.fill,
              ),
            ),
    );
  }

  Widget setImageBuilder(Image image) {
    return InkWell(
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            ClipOval(child: image),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 40,
                color: Color(0xffb59c88).withOpacity(0.6),
                child: Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
          ],
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                'Pick an image from:',
                style: TextStyle(
                  color: Color(0xffb59c88),
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    pickImage(ImageSource.camera);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Camera',
                    style: TextStyle(
                      color: Color(0xffb59c88),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    pickImage(ImageSource.gallery);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Gallery',
                    style: TextStyle(
                      color: Color(0xffb59c88),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
