import 'package:flutter/material.dart';

class ShowSnackBar {
  static final ShowSnackBar instance = ShowSnackBar();

  final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  void showSnackBarSucess(String msg) {
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
