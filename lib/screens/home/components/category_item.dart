import 'package:flutter/cupertino.dart';
import 'package:todoapp/constants.dart';
import 'package:todoapp/shared/components/linear_progress_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.titleText,
    required this.categoryText,
    required this.percentComplete,
    required this.barColor,
  }) : super(key: key);

  final String titleText;
  final String categoryText;
  final double percentComplete;
  final Color barColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: k.defaultContainerWidth,
        padding: EdgeInsets.symmetric(
          horizontal: k.defaultPadding,
          vertical: k.defaultPadding,
        ),
        decoration: BoxDecoration(
          color: Vx.white,
          borderRadius: BorderRadius.circular(k.defaultBorderRadius),
          boxShadow: [
            BoxShadow(
                offset: Offset(k.defaultOffsetX, k.defaultOffsetY),
                blurRadius: k.defaultBlurRadius,
                spreadRadius: k.defaultSpreadRadius,
                color: Vx.blueGray900.withOpacity(0.1)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText.text.color(k.defaultGray).make(),
            categoryText.text.xl2.bold.make(),
            LinearProgressBar(
              percentComplete: percentComplete,
              color: barColor,
            )
          ],
        ),
      ),
    );
  }
}

