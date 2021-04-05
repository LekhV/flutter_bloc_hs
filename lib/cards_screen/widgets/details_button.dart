import 'package:flutter/material.dart';

class DetailsButton extends StatelessWidget {
  final String text;
  final Function onTap;

  DetailsButton({this.text, this.onTap, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: new Text(
        text ?? 'See Details',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
      onPressed: onTap,
      color: Colors.white,
      borderSide: BorderSide(
        color: Colors.white,
        width: 1,
      ),
      highlightedBorderColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
    );
  }
}
