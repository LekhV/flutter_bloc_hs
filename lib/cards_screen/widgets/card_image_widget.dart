import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_example_bloc/utils/persist_storage.dart';

const double degrees2Radians = math.pi / 180.0;
const double radians2Degrees = 180.0 / math.pi;

double degrees(double radians) => radians * radians2Degrees;

double radians(double degrees) => degrees * degrees2Radians;

class CardImageWidget extends StatefulWidget {
  final String imageUrl;
  const CardImageWidget(this.imageUrl);

  @override
  _CardImageWidgetState createState() => _CardImageWidgetState();
}

class _CardImageWidgetState extends State<CardImageWidget> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  // String curremrCardBack =
  //     'https://d15f34w2p8l1cc.cloudfront.net/hearthstone/f7d4aa4cdcf78441cc8d0bae954a55a271ad9cedc89c611b8fc0cf0859a8a32f.png';
  // Future<void> changeTheme() async {
  //   curremrCardBack = await persistStorage?.getStringForKey(PREFERENCES_CARDBACK);
  // }

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
    return Container(
      height: 250,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.translate(
            offset: Offset(-10, 0),
            child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.01)
                ..rotateY(radians(1.5)),
              child: Container(
                height: 216,
                margin: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-44, 0),
            child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.01)
                ..rotateY(radians(8)),
              child: Container(
                height: 188,
                margin: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Transform.translate(
              offset: Offset(-30, 0),
              child: Center(
                child: GestureDetector(
                  onTap: onPressedHandler,
                  child: ImageAnimation(animationController, widget.imageUrl),
                  //  Image.network(
                  //         widget.imageUrl ??
                  //             'https://d15f34w2p8l1cc.cloudfront.net/hearthstone/f7d4aa4cdcf78441cc8d0bae954a55a271ad9cedc89c611b8fc0cf0859a8a32f.png',
                  //         width: 400,
                  //         height: 400,
                  //       ),
                ),
              ),
            ),
          ),
        ],
      ),
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

class ImageAnimation extends StatefulWidget {
  final AnimationController animationController;
  final String img;

  ImageAnimation(this.animationController, this.img);

  @override
  _ImageAnimationState createState() => _ImageAnimationState();
}

class _ImageAnimationState extends State<ImageAnimation> {
  String currentCardBack =
      'https://d15f34w2p8l1cc.cloudfront.net/hearthstone/f7d4aa4cdcf78441cc8d0bae954a55a271ad9cedc89c611b8fc0cf0859a8a32f.png';
  Future<void> changeCardBack() async {
    currentCardBack = await persistStorage?.getStringForKey(PREFERENCES_CARDBACK) ??
        'https://d15f34w2p8l1cc.cloudfront.net/hearthstone/f7d4aa4cdcf78441cc8d0bae954a55a271ad9cedc89c611b8fc0cf0859a8a32f.png';
    ;
  }

  @override
  void initState() {
    super.initState();
    changeCardBack();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: this.widget.animationController,
      builder: (context, child) {
        return Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(
              (180 / (180 / math.pi)) * widget.animationController.value,
            ),
          child: Stack(
            children: [
              widget.animationController.value >= 0.5
                  ? Image.network(
                      currentCardBack,
                      width: 400,
                      height: 400,
                    )
                  : Image.network(
                      widget.img,
                      width: 400,
                      height: 400,
                    ),
            ],
          ),
        );
      },
    );
  }
}
