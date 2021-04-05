import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_example_bloc/common/custom_error_widget.dart';
import 'package:flutter_example_bloc/common/custom_indicator.dart';

import 'package:flutter_example_bloc/cardbacks_screen/cardbacks_screen.dart';
import 'package:flutter_example_bloc/common/card_details_image.dart';
import 'package:flutter_example_bloc/cards_screen/search_cards/search_cards_screen.dart';

import 'package:flutter_example_bloc/home_screen/bloc/info_event.dart';
import 'package:flutter_example_bloc/home_screen/bloc/info_hs_bloc.dart';
import 'package:flutter_example_bloc/home_screen/bloc/info_state.dart';
import 'package:flutter_example_bloc/home_screen/home_screen.dart';

import '../config.dart';

class DrawerScreen extends StatefulWidget {
  final String title;

  DrawerScreen({Key key, this.title}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> with WidgetsBindingObserver {
  List<String> _list = [];
  String _routeText = '';

  @override
  void initState() {
    super.initState();
    BlocProvider.of<InfoHSBloc>(context).add(InfoHSFetched());
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('state = $state');
    if (state == AppLifecycleState.resumed) {
      BlocProvider.of<InfoHSBloc>(context).add(InfoHSFetched());
    }
  }

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );
    return BlocBuilder<InfoHSBloc, InfoHSState>(
      builder: (context, state) {
        if (state is InfoHSInitial) {
          return CustomIndicator();
        }
        if (state is InfoHSFailure) {
          return CustomErrorWidget();
        }
        if (state is InfoHSSuccess) {
          if (state.infoHSs == null) {
            return CustomErrorWidget(textError: 'No data');
          }

          return Scaffold(
            appBar: AppBar(
              title: Text('Hearthstone'),
              backgroundColor: Colors.brown,
            ),
            body: HomeScreen(list: _list, routeText: _routeText),
            drawer: Drawer(
              child: Container(
                color: Colors.brown,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      child: CardDetailsImage(
                        config.mainImgHs,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Search Cards',
                        style: defaultTextStyle,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        return Navigator.of(context).push(SearchCardsScreen.getRoute());
                      },
                    ),
                    _itemDrawer(
                      title: 'Classes',
                      routeText: 'classes',
                      itemList: state.infoHSs.classes,
                    ),
                    _itemDrawer(
                      title: 'Types',
                      routeText: 'types',
                      itemList: state.infoHSs.types,
                    ),
                    _itemDrawer(
                      title: 'Sets',
                      routeText: 'sets',
                      itemList: state.infoHSs.sets,
                    ),
                    _itemDrawer(
                      title: 'Races',
                      routeText: 'races',
                      itemList: state.infoHSs.races,
                    ),
                    _itemDrawer(
                      title: 'Qualities',
                      routeText: 'qualities',
                      itemList: state.infoHSs.qualities,
                    ),
                    _itemDrawer(
                      title: 'Factions',
                      routeText: 'factions',
                      itemList: state.infoHSs.factions,
                    ),
                    ListTile(
                      title: Text(
                        'Card Backs',
                        style: defaultTextStyle,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        return Navigator.of(context).push(
                          CardBacksScreen.getRoute(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }

  Widget _itemDrawer({String title, String routeText, List<String> itemList}) {
    final defaultTextStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    );
    return ListTile(
      title: Text(
        title ?? '',
        style: defaultTextStyle,
      ),
      onTap: () {
        setState(() {
          _routeText = routeText ?? '';
          _list = itemList ?? [];
        });
        Navigator.pop(context);
      },
    );
  }
}
