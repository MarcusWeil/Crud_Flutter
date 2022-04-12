import 'package:flutter/material.dart';

class DeleteSnackBar {
  static final DeleteSnackBar instance = DeleteSnackBar();

  final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  void showDeleteSnackBar(String msg) {
    rootScaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      elevation: 4,
      backgroundColor: Colors.green,
      content: Text(
        msg,
        style: const TextStyle(fontSize: 15, color: Colors.white),
        textAlign: TextAlign.center,
      ),
      duration: const Duration(seconds: 3),
    ));
  }
}
