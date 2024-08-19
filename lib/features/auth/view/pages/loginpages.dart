import 'package:flutter/material.dart';

import '../../../../core/theme/app_pallete.dart';
import '../widgets/buttonwithsyle.dart';
import '../widgets/input.dart';
import 'signuppages.dart';


class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(45),
            child: Form(
              child: Column(
                children: [
                  const Image(
                      image: AssetImage('assets/img/logoDifusiKecil.png')),
                  const Text(
                    "PT Dinar Wahana Gemilang",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Monserat',
                        color: Color.fromRGBO(230, 81, 0, 1)),
                  ),

                  //Field username password
                  const SizedBox(
                    height: 60,
                  ),
                  Customfield(LabelText: 'Username'),
                  const SizedBox(
                    height: 10,
                  ),
                  Customfield(
                    LabelText: 'Password',
                    isObscureText: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GradientButton(),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Dont Have Account? "),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return Signuppages();
                                },
                              ),
                            );
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(color: Pallete.gradient4),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
