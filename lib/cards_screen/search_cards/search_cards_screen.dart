import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_example_bloc/cards_screen/bloc/list_cards_bloc.dart';
import 'package:flutter_example_bloc/cards_screen/bloc/list_cards_state.dart';

import 'package:flutter_example_bloc/common/background_container.dart';
import 'package:flutter_example_bloc/common/custom_error_widget.dart';
import 'package:flutter_example_bloc/common/custom_indicator.dart';

import 'package:flutter_example_bloc/cards_screen/bloc/list_cards_event.dart';
import 'package:flutter_example_bloc/cards_screen/widgets/item_list_widget.dart';

class SearchCardsScreen extends StatefulWidget {
  static const _routeName = '/search_cards';

  static MaterialPageRoute getRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: _routeName),
      builder: (_) => SearchCardsScreen(),
    );
  }

  SearchCardsScreen({Key key}) : super(key: key);

  @override
  _SearchCardsScreenState createState() => _SearchCardsScreenState();
}

class _SearchCardsScreenState extends State<SearchCardsScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CardsBloc>(context).add(CardsStart());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          children: [
            AppBar(
              title: Text('Search Cards'),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
            _searchWidget(),
            Expanded(
              child: BlocBuilder<CardsBloc, CardsState>(
                builder: (context, state) {
                  if (state is CardsInitial) {
                    return CustomErrorWidget(textError: 'Please start enter the name of the card');
                  }
                  if (state is CardsLoading) {
                    return CustomIndicator();
                  }
                  if (state is CardsFailure) {
                    return CustomErrorWidget(textError: 'Card not found');
                  }
                  if (state is CardsSuccess) {
                    if (state.listCards == null) {
                      return CustomErrorWidget(textError: 'No data');
                    }
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.listCards.length,
                      itemBuilder: (_, i) => state.listCards[i].img != null
                          ? ItemListCardsWidget(
                              cardByParams: state.listCards[i],
                            )
                          : Container(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchWidget() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
      ),
      child: TextField(
        onChanged: (value) {
          BlocProvider.of<CardsBloc>(context).add(
            SearchCards(parameter: 'search/$value'),
          );
        },
        style: TextStyle(
          color: Colors.white,
        ),
        cursorColor: Colors.brown,
        decoration: InputDecoration(
          hintText: 'Enter the name of the card',
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.5),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.brown),
          ),
        ),
      ),
    );
  }
}
