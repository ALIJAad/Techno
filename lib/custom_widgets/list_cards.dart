import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/custom_theme.dart';

String url =
    "https://cdn.luxe.digital/media/20220215124036/best-men-sneakers-nike-dunk-high-retro-shoe-luxe-digital-780x520.jpg";

class ListCard extends StatelessWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      margin: EdgeInsets.only(left: 30, bottom: 30, right: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: CustomTheme.cardShadow,
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    height: double.infinity,
                    child: Image(
                      image: NetworkImage(url),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                      ),
                      Text(
                        "Title",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                      ),
                      Text(
                        "City",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                      ),
                      Text(
                        "price \$",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
