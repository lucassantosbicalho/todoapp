import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:todoapp/constants.dart';

class TopBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(k.defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'icons/menu.svg',
              color: Colors.black,
              width: k.defaultIconSize,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'icons/search.svg',
                  color: Vx.blueGray400,
                  width: k.defaultIconSize,
                ),
              ),
              SizedBox(width: k.defaultSizedBox,),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'icons/bell.svg',
                  color: Vx.blueGray400,
                  width: k.defaultIconSize,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
