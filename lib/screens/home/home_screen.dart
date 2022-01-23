import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/shared/components/subtitle.dart';
import 'package:todoapp/shared/layouts/top_bar.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:todoapp/constants.dart';

import 'components/category_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final cardsTitle = ['Business', 'Study', 'Exercises', 'HomeWork'];
    final cardsQtyTasks = ['10 tasks', '2 tasks', '19 tasks', '10 tasks'];
    final cardsPercentComplete = [19.0, 100.0, 20.0, 10.0];
    final cardsBarColor = [Vx.black, Vx.lightBlue500, Vx.purple500, Vx.red400];


    return Scaffold(
      backgroundColor: Vx.gray50,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(),
            Padding(
              padding: EdgeInsets.all(k.defaultPadding),
              child: 'What\'s up, Lucas!'
                  .text
                  .xl4
                  .extraBold
                  .color(Vx.blueGray600)
                  .make(),
            ),
            const Subtitle(text: 'categories'),
            SizedBox(height: k.defaultPadding),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 120,
                minHeight: 30,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                children: [
                  SizedBox(height: k.defaultPadding),
                  ...List.generate(
                      4,
                      (index) => Row(children: [

                              CategoryItem(
                                categoryText: cardsTitle[index],
                                titleText: cardsQtyTasks[index],
                                percentComplete: cardsPercentComplete[index],
                                barColor: cardsBarColor[index],
                              ),
                              SizedBox(height: k.defaultPadding),
                            ],
                          ))
                ],
              ),
            ),
            SizedBox(height: k.defaultPadding),
            const Subtitle(text: 'Today\'s tasks'),
          ],
        ),
      ),
    );
  }
}
