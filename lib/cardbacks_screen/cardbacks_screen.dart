import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_example_bloc/common/background_container.dart';
import 'package:flutter_example_bloc/common/custom_error_widget.dart';
import 'package:flutter_example_bloc/common/custom_indicator.dart';
import 'card_back_details_screen/card_back_details_screen.dart';

import 'bloc/cardbacks_bloc.dart';
import 'bloc/cardbacks_event.dart';
import 'bloc/cardbacks_state.dart';

class CardBacksScreen extends StatefulWidget {
  static const _routeName = '/list_cards_backs';

  static MaterialPageRoute getRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: _routeName),
      builder: (_) => CardBacksScreen(),
    );
  }

  CardBacksScreen({Key key}) : super(key: key);

  @override
  _CardBacksScreenState createState() => _CardBacksScreenState();
}

class _CardBacksScreenState extends State<CardBacksScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CardBacksBloc>(context).add(CardBacksFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardBacksBloc, CardBacksState>(
      builder: (context, state) {
        if (state is CardBacksInitial) {
          return CustomIndicator();
        }
        if (state is CardBacksFailure) {
          return CustomErrorWidget(textError: 'failed to fetch CardBacks');
        }
        if (state is CardBacksSuccess) {
          if (state.listCardBacks == null) {
            return CustomErrorWidget(textError: 'No CardBacks');
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text('List Cards'),
              backgroundColor: Colors.brown,
            ),
            body: BackgroundContainer(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: state.listCardBacks.length,
                itemBuilder: (context, i) => GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    CardBackDetailsScreen.getRoute(state.listCardBacks[i]),
                  ),
                  child: state.listCardBacks[i].img != null
                      ? Image.network(
                          state.listCardBacks[i].img,
                        )
                      : Center(
                          child: Text(
                            state.listCardBacks[i].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                ),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200 / 2,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 8,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
