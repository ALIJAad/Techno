import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:techno/custom_widgets/custom_button.dart';
import 'package:techno/utils/custom_theme.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool addButtonLoad = false;

  void addLoad() {
    setState(() {
      addButtonLoad = true;
    });

    setState(() {
      addButtonLoad = false;
    });
  }

  String url =
      "https://cdn.luxe.digital/media/20220215124036/best-men-sneakers-nike-dunk-high-retro-shoe-luxe-digital-780x520.jpg";

  @override
  build(context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.zero,
              height: size.height * 0.5,
              width: size.width,
              child: Image(image: NetworkImage(url)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    ' Price \$: ',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    loading: false,
                    text: 'Add to cart!',
                    func: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "About this",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "$url",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  Container(
//                 decoration: const ShapeDecoration(
//                   color: CustomTheme.yellow,
//                   shape: CircleBorder(),
//                   shadows: CustomTheme.buttonShadow,
//                 ),
//                 child: IconButton(onPressed: () {}, icon: Icon(Icons.share)),
//               ),
