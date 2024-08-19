import 'package:flutter/material.dart';

import '../widgets/chartitembuilder.dart';


class PembelianPages extends StatelessWidget {
  const PembelianPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar section
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
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            CardItemChart(
              judullayanan: "Retail",
              Idlayanan: "EX1234",
              Kapasitaslayanan: "10Mbps",
              IpPublic: "none Ip Public",
              Tambahan: "None",
              BiayaBulanan: "210.000",
            ),
            CardItemChart(
              judullayanan: "Dedicated",
              Idlayanan: "EX1234",
              Kapasitaslayanan: "30Mbps",
              IpPublic: "1.1.1.1",
              Tambahan: "Router",
              BiayaBulanan: "700.000",
            ),
          ],
        ),
      ),
    );
  }
}
