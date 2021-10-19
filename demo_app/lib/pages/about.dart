import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class About extends StatefulWidget {
  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  File? image;

  Future pickImageGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    final ImageTemporary = File(image.path);
    setState(() => this.image = ImageTemporary);
  }

  Future pickImageCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;

    final ImageTemporary = File(image.path);
    setState(() => this.image = ImageTemporary);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Demo App"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Text(
                "Image Picker from gallery & Camera",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 24),
              image != null
                  ? ClipOval(
                      child: Image.file(
                        image!,
                        width: 160,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    )
                  : ClipOval(child: FlutterLogo(size: 100)),
              const SizedBox(height: 24),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(240, 60)),
                      onPressed: () => pickImageGallery(),
                      icon: Icon(Icons.image_outlined),
                      label: Text("Pick from Gallery")),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(240, 60)),
                      onPressed: () => pickImageCamera(),
                      icon: Icon(Icons.camera_alt_outlined),
                      label: Text("Pick from Camera")),
                ),
              ),
            ],
          ),
        ));
  }
}
