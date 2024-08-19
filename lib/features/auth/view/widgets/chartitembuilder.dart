import 'package:flutter/material.dart';

import '../../../../core/theme/app_pallete.dart';


class CardItemChart extends StatelessWidget {
  final String judullayanan;
  final String Idlayanan;
  final String Kapasitaslayanan;
  final String BiayaBulanan;
  final String Tambahan;
  final String IpPublic;
  
  const CardItemChart(
      {super.key,
      required this.judullayanan,
      required this.Idlayanan,
      required this.Kapasitaslayanan,
      required this.BiayaBulanan,
      required this.Tambahan,
      required this.IpPublic});

  @override
  Widget build(BuildContext context) {
    var mediaquerywidth = MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        color: Pallete.cardColor,
        width: mediaquerywidth * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  const Icon(Icons.adjust_sharp),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    judullayanan,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.only(left: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ID  : $Idlayanan"),
                  Text("Kapasitas  : $Kapasitaslayanan"),
                  Text("Tambahan  : $Tambahan"),
                  Text("IP Public : $IpPublic"),
                  Text("Biaya Bulanan : $BiayaBulanan")
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
