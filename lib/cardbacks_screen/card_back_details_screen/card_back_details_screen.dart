import 'package:flutter/material.dart';
import 'package:flutter_example_bloc/cardbacks_screen/api/cardback.dart';

import 'package:flutter_example_bloc/common/card_details_image.dart';
import 'package:flutter_example_bloc/common/background_container.dart';
import 'package:flutter_example_bloc/utils/persist_storage.dart';

class CardBackDetailsScreen extends StatelessWidget {
  static const _routeName = '/card_back_details';

  static MaterialPageRoute getRoute(CardBack cardBack) {
    return MaterialPageRoute(
      settings: RouteSettings(name: _routeName),
      builder: (_) => CardBackDetailsScreen(cardBack: cardBack),
    );
  }

  CardBackDetailsScreen({@required this.cardBack, Key key})
      : assert(cardBack != null),
        super(key: key);
  final CardBack cardBack;

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 18,
    );
    return Scaffold(
      body: BackgroundContainer(
        child: ListView(
          children: [
            AppBar(
              title: Text(
                cardBack.name,
              ),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            CardDetailsImage(cardBack.img),
            Divider(color: Colors.transparent),
            Text(
              cardBack.description ?? '',
              style: defaultTextStyle,
            ),
            Divider(color: Colors.transparent),
            Text(
              'How To Get:',
              textAlign: TextAlign.center,
              style: defaultTextStyle.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(color: Colors.transparent),
            Text(
              cardBack.howToGet ?? 'Ooops, by no means',
              style: defaultTextStyle,
            ),
            Divider(color: Colors.transparent),
            _buttonBuilder(context),
          ],
        ),
      ),
    );
  }

  Widget _buttonBuilder(BuildContext context) {
    return Container(
      height: 54,
      child: OutlinedButton(
        child: new Text(
          'Сhoose as main!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        onPressed: () {
          persistStorage?.setStringForKey(
            PREFERENCES_CARDBACK,
            cardBack.img,
          );
          _showMessage(context);
        },
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
    );
  }

  void _showMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Cardback changed.',
          textAlign: TextAlign.center,
        ),
        duration: Duration(milliseconds: 1000),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
