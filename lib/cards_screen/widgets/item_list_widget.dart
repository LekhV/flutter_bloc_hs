import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_example_bloc/cards_screen/card_details_screen/card_details_screen.dart';

import 'package:flutter_example_bloc/cards_screen/widgets/attribute_widget.dart';

import 'package:flutter_example_bloc/cards_screen/api/card_by_params.dart';
import 'package:flutter_example_bloc/cards_screen/widgets/card_image_widget.dart';

import 'details_button.dart';

class ItemListCardsWidget extends StatefulWidget {
  final CardByParams cardByParams;

  ItemListCardsWidget({@required this.cardByParams, key})
      : assert(cardByParams != null),
        super(key: key);

  @override
  _ItemListCardsWidgetState createState() => _ItemListCardsWidgetState();
}

class _ItemListCardsWidgetState extends State<ItemListCardsWidget>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CardImageWidget(widget.cardByParams.img),
          ],
        ),
        Container(
          margin: EdgeInsets.only(right: 30),
          padding: EdgeInsets.symmetric(vertical: 14),
          alignment: Alignment.centerRight,
          child: Column(
            children: [
              _skillWidget(
                'Cost',
                widget.cardByParams.cost,
              ),
              _skillWidget(
                'Attack',
                widget.cardByParams.attack,
              ),
              _skillWidget(
                'Health',
                widget.cardByParams.health,
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 32,
                child: DetailsButton(
                  onTap: () => Navigator.of(context).push(
                    CardDetailsScreen.getRoute('${widget.cardByParams.cardId}'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void onPressedHandler() {
    if (animationController.isDismissed) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
  }
}

Widget _skillWidget(String title, int skill) {
  double progress = skill?.toDouble() ?? 0.0;
  return Column(
    children: [
      SizedBox(height: 5),
      Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
      AttributeWidget(
        progress: progress * 10,
        customColor: skill != null ? Colors.brown : Colors.brown.withOpacity(0.3),
        child: Text(
          skill?.toString() ?? '-',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
