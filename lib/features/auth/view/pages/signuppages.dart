import 'package:flutter/material.dart';

import '../widgets/input.dart';

class Signuppages extends StatefulWidget {
  const Signuppages({super.key});

  @override
  State<Signuppages> createState() => _SignuppagesState();
}

class _SignuppagesState extends State<Signuppages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Difusi Net",
              style: TextStyle(
                  color: Colors.brown.shade700,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.orange.shade300,
          leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(Icons.arrow_back),
              ))),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Text(
              "SignUp Page",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cabin',
                  color: Colors.red.shade800),
            ),
            const SizedBox(
              height: 50,
            ),
            InputFlat(
              LabelText: "Nama Lengkap",
            ),
            const SizedBox(
              height: 10,
            ),
            InputFlat(
              LabelText: "Email ",
            ),
            const SizedBox(
              height: 10,
            ),
            InputFlat(
              LabelText: "No telp",
            ),
            InputFlat(
              LabelText: "Password",
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 243, 97, 39))),
                child: const Text(
                  "Register",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
