import 'package:flutter/material.dart';
import 'package:flutter_example_bloc/config.dart';

class CardDetailsImage extends StatelessWidget {
  final String image;
  const CardDetailsImage(this.image);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: AspectRatio(
        aspectRatio: 1,
        child: Stack(
          children: [
            Align(
              child: Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
            Align(
              child: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
            Align(
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Image.network(
                      image ?? config.mainImgHs,
                      width: 400,
                      height: 400,
                    ),
                  ),
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
          ],
        ),
      ),
    );
  }
}
