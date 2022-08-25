import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:techno/custom_widgets/loader.dart';
import 'package:techno/utils/custom_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key, required this.loading, this.func, required this.text})
      : super(key: key);

  final bool loading;
  final func;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        boxShadow: CustomTheme.buttonShadow,
        color: CustomTheme.yellow,
      ),
      child: MaterialButton(
        onPressed: loading ? null : func,
        child: loading
            ? const Loader()
            : Text(
                text,
                style: Theme.of(context).textTheme.titleSmall,
              ),
      ),
    );
  }
}
