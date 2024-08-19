import 'package:flutter/material.dart';

import '../../../../core/theme/app_pallete.dart';


class CardView extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String LabelText;
  const CardView({
    super.key,
    // ignore: non_constant_identifier_names
    required this.LabelText,
  });

  @override
  Widget build(BuildContext context) {
    var mediaquerywidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Card(
          color: Pallete.cardColor,
          child: SizedBox(
            width: mediaquerywidth * 0.8,
            height: 70,
            child: Row(
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 50),
                    child: const Icon(Icons.home)),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    LabelText,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
