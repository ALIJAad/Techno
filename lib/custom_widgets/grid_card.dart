import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:techno/utils/custom_theme.dart';

class GridCard extends StatelessWidget {
  const GridCard({Key? key, required this.index, required this.onpress})
      : super(key: key);

  final int index;
  final onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index % 2 == 0
          ? const EdgeInsets.only(left: 12)
          : const EdgeInsets.only(right: 12),
      decoration: CustomTheme.getCardDecoration(),
      child: GestureDetector(
        onTap: onpress,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Column(
            children: [
              const Expanded(
                flex: 7,
                child: SizedBox(
                  child: Image(
                    image: NetworkImage(
                        'https://cdn.luxe.digital/media/20220215124036/best-men-sneakers-nike-dunk-high-retro-shoe-luxe-digital-780x520.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            'Title',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        Text(
                          'Price',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
