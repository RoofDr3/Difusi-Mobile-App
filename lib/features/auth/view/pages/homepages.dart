import 'package:flutter/material.dart';
import '../../../../core/theme/app_pallete.dart';
import '../widgets/cardview.dart';
import 'accountpages.dart';
import 'pageslayanan.dart/dedicatedpages.dart';
import 'pageslayanan.dart/retailpages.dart';
import 'pageslayanan.dart/sohopages.dart';
import 'pageslayanan.dart/sohopublicpages.dart';
import 'pembelianpages.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //section appbar
      appBar: AppBar(
        backgroundColor: Colors.orange.shade300,
        title: Text("Difusi Net",
            style: TextStyle(
              color: Colors.brown.shade700,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,

        //button action
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

      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.orange.shade400,
              child: Container(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: const Icon(Icons.person_2_rounded)),
                    Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: const Text(
                          "user1",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),

            //content hamburg
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.person_2_outlined),
              title: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const AccountPages();
                  }));
                },
                child: const Text(
                  "Account",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart_outlined),
              title: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const PembelianPages();
                      },
                    ),
                  );
                },
                child: const Text("Pembelian", style: TextStyle(fontSize: 12)),
              ),
            )
          ],
        ),
      ),

      //section body
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              "Sub Layanan Internet Difusi",
              style: TextStyle(
                  color: Colors.orange.shade900,
                  fontFamily: 'Cabin',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return RetailPages();
                    },
                  ),
                );
              },
              highlightColor: Pallete.gradient1,
              splashColor: Pallete.gradient3,
              borderRadius: BorderRadius.circular(10),
              child: const CardView(
                LabelText: "Retail",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SohoPages();
                    },
                  ),
                );
              },
              highlightColor: Pallete.gradient1,
              splashColor: Pallete.gradient3,
              borderRadius: BorderRadius.circular(10),
              child: const CardView(
                LabelText: "Soho",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return SohoPublicPages();
                    },
                  ),
                );
              },
              highlightColor: Pallete.gradient1,
              splashColor: Pallete.gradient3,
              borderRadius: BorderRadius.circular(10),
              child: const CardView(
                LabelText: "Soho public",
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return DedicatedPages();
                    },
                  ),
                );
              },
              highlightColor: Pallete.gradient1,
              splashColor: Pallete.gradient3,
              borderRadius: BorderRadius.circular(10),
              child: const CardView(
                LabelText: "Dedicated",
              ),
            ),

            //button logout
            const SizedBox(
              height: 30,
            ),
            FilledButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red)),
                child: const Text(
                  "Logout",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
