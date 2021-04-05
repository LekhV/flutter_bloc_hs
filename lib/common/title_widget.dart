import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget(this.title, {Key key})
      : assert(title != null),
        super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 14.0),
          alignment: Alignment.bottomCenter,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white.withOpacity(0.2),
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
