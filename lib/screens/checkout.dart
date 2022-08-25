import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techno/custom_widgets/custom_button.dart';
import 'package:techno/custom_widgets/list_cards.dart';

import '../utils/custom_theme.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  final carts = [1, 3];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            itemCount: carts.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 30),
            itemBuilder: (context, index) {
              return ListCard();
            },
          ),
          pricefooter(context),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: CustomButton(
              loading: false,
              text: 'Checkout',
              func: () {},
            ),
          ),
        ],
      ),
    );
  }

  pricefooter(context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            height: 2,
            color: CustomTheme.grey,
            thickness: 2,
          ),
          Padding(padding: EdgeInsets.all(8)),
          Text(
            "Total: ",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            "price \$: ",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
