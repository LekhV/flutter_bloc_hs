import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_example_bloc/common/background_container.dart';
import 'package:flutter_example_bloc/common/custom_error_widget.dart';
import 'package:flutter_example_bloc/common/custom_indicator.dart';

import 'package:flutter_example_bloc/cards_screen/bloc/list_cards_event.dart';
import 'package:flutter_example_bloc/cards_screen/widgets/item_list_widget.dart';

import 'bloc/list_cards_bloc.dart';
import 'bloc/list_cards_state.dart';

class ListCardsScreen extends StatefulWidget {
  static const _routeName = '/list_cards';

  static MaterialPageRoute getRoute(String parameter, String title) {
    return MaterialPageRoute(
      settings: RouteSettings(name: _routeName),
      builder: (_) => ListCardsScreen(parameter: parameter, title: title),
    );
  }

  ListCardsScreen({@required this.parameter, @required this.title, Key key})
      : assert(parameter != null),
        super(key: key);

  final String parameter;
  final String title;

  @override
  _ListCardsScreenState createState() => _ListCardsScreenState();
}

class _ListCardsScreenState extends State<ListCardsScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CardsBloc>(context).add(CardsFetched(parameter: widget.parameter));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardsBloc, CardsState>(
      builder: (context, state) {
        if (state is CardsInitial) {
          return CustomIndicator();
        }
        if (state is CardsFailure) {
          return CustomErrorWidget(textError: 'failed to fetch Cards');
        }
        if (state is CardsSuccess) {
          if (state.listCards.isEmpty) {
            return CustomErrorWidget(textError: 'No data');
          }
          return Scaffold(
            body: BackgroundContainer(
              child: Column(
                children: [
                  AppBar(
                    title: Text('List of ${widget.title}'),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.listCards.length,
                      itemBuilder: (_, i) => state.listCards[i].img != null
                          ? ItemListCardsWidget(
                              cardByParams: state.listCards[i],
                            )
                          : Container(),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
