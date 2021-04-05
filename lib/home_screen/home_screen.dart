import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_example_bloc/config.dart';

import 'package:flutter_example_bloc/common/title_widget.dart';
import 'package:flutter_example_bloc/common/background_container.dart';

import 'package:flutter_example_bloc/cards_screen/list_cards_screen.dart';
import 'package:flutter_example_bloc/common/card_details_image.dart';

import 'package:flutter_example_bloc/home_screen/bloc/info_event.dart';
import 'package:flutter_example_bloc/home_screen/bloc/info_hs_bloc.dart';

class HomeScreen extends StatefulWidget {
  static const _routeName = '/home';
  static MaterialPageRoute getRoute({List<String> list, String routeText}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: _routeName),
      builder: (_) => HomeScreen(
        list: list,
        routeText: routeText,
      ),
    );
  }

  HomeScreen({@required this.list, @required this.routeText, key})
      : assert(list != null, routeText != null),
        super(key: key);
  final List<String> list;
  final String routeText;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<InfoHSBloc>(context).add(InfoHSFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            CardDetailsImage(
              config.mainImgHs,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.list.length,
              itemBuilder: (_, i) => _itemBuilder(i),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemBuilder(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          ListCardsScreen.getRoute('${widget.routeText}/${widget.list[index]}', widget.list[index]),
        ),
        child: TitleWidget(
          widget.list[index],
        ),
      ),
    );
  }
}
