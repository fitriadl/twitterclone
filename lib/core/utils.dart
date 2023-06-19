import 'package:flutter/material.dart';

void showSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
  ));
}

String getNameFromEmail(String email) {
  //
  // List= []
  return email.split('@')[0];
}
