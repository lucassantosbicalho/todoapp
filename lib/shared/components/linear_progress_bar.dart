
import 'package:flutter/cupertino.dart';

class LinearProgressBar extends StatelessWidget {
  const LinearProgressBar(
      {Key? key, required this.percentComplete, required this.color})
      : super(key: key);

  final double percentComplete;
  final Color color;
  final double finalWidth = 172;

  @override
  Widget build(BuildContext context) {

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 4,
          width: finalWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: color.withOpacity(0.2),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          height: 4,
          width: percentComplete * finalWidth / 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: color,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 2),
                blurRadius: 3,
                spreadRadius: 2,
                color: color.withOpacity(0.25),
              )
            ],
          ),
        ),

      ],
    );
  }
}
