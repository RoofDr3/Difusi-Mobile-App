import 'package:flutter/material.dart';

//belum  terpakai
class AppbarApp extends StatelessWidget {
  const AppbarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text("Difusi Net",
            style: TextStyle(
              color: Colors.brown.shade700,
              fontSize: 15,
            )),
        centerTitle: true,
        backgroundColor: Colors.orange.shade300,
        leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const Icon(Icons.arrow_back),
            )));
  }
}
