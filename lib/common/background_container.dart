import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  BackgroundContainer({
    @required this.child,
  }) : assert(child != null);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.orange,
            Colors.brown,
          ],
          begin: Alignment(0.3, -1),
          end: Alignment(-0.8, 1),
        ),
      ),
      child: SafeArea(child: child),
    );
  }
}
