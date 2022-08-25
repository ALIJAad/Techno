import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techno/screens/checkout.dart';
import 'package:techno/screens/home.dart';
import 'package:techno/screens/profile.dart';
import 'package:techno/utils/custom_theme.dart';

void main() {
  runApp(const Techno());
}

class Techno extends StatelessWidget {
  const Techno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.getTheme(),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Techno",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  letterSpacing: 4,
                )),
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(33),
                topRight: Radius.circular(33),
              ),
              boxShadow: CustomTheme.cardShadow,
            ),
            child: const TabBar(
              padding: EdgeInsets.symmetric(vertical: 10),
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart),
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [Home(), Profile(), CheckOut()]),
        ),
      ),
    );
  }
}
