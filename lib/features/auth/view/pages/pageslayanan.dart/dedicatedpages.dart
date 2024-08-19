import 'package:flutter/material.dart';
import '../../widgets/input.dart';
import '../pembelianpages.dart';

class DedicatedPages extends StatelessWidget {
  const DedicatedPages({super.key});

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

          //button back
          leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(Icons.arrow_back),
              )),

          //button chart
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PembelianPages();
                  }));
                },
                icon: const Icon(Icons.shopping_cart))
          ],
        ),

        // form layanan
        body: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(top: 50),
                  alignment: Alignment.center,
                  child: Text(
                    "Form Layanan Dedicated",
                    style: TextStyle(
                        fontFamily: 'Cabin',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DropdownbtnKapasitas(),
                  SizedBox(
                    width: 15,
                  ),
                  DropdownTambahan()
                ],
              ),
              SizedBox(
                height: 30,
              ),
              InputFlat(LabelText: "Nama Lokasi"),
              SizedBox(
                height: 10,
              ),
              InputFlat(LabelText: "Alamat Pemasangan"),
              SizedBox(
                height: 10,
              ),
              InputFlat(LabelText: "Koordinat Lokasi"),
              SizedBox(
                height: 40,
              ),
              Container(
                  alignment: Alignment.center,
                  child: ButtonTambah(
                    textbtn: "Add To Chart",
                  ))
            ],
          ),
        ));
  }
}
