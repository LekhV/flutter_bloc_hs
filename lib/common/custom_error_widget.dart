import 'package:flutter/material.dart';

import 'background_container.dart';

class CustomErrorWidget extends StatelessWidget {
  CustomErrorWidget({this.textError});
  final String textError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Center(
          child: Text(
            textError ?? 'Sorry, something went wrong',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
