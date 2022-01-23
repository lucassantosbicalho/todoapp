
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:todoapp/constants.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: k.defaultPadding),
      child: text.text.uppercase.xs.bold.make(),
    );
  }
}