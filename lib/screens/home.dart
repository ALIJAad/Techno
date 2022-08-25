import 'package:flutter/material.dart';
import 'package:techno/custom_widgets/grid_card.dart';
import 'package:techno/screens/product.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final data = [
    1,
    2,
    4,
    45,
  ];

  onCardPress() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ProductScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 32),
        itemCount: data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 40, crossAxisSpacing: 34),
        itemBuilder: (context, index) {
          return GridCard(
              index: index,
              onpress: () {
                onCardPress();
              });
        });
  }
}
