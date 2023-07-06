import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

void showSnackbar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
    content: Text(content),
  ));
}

String getNameFromEmail(String email) {
  //
  // List= []
  return email.split('@')[0];
}

Future<List<File>> pickImages() async {
  List<File> Images = [];
  final ImagePicker picker = ImagePicker();
  final imageFiles = await picker.pickMultiImage();
  if(imageFiles.isNotEmpty) {
    for(final image in imageFiles) {
      Images.add(File(image.path));
    }
  }
  return images;
}