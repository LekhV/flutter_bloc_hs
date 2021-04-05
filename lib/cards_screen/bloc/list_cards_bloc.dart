import 'package:bloc/bloc.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_example_bloc/cards_screen/api/card_by_params.dart';

import 'package:flutter_example_bloc/cards_screen/bloc/list_cards_event.dart';
import 'package:flutter_example_bloc/cards_screen/bloc/list_cards_state.dart';

class CardsBloc extends Bloc<CardsEvent, CardsState> {
  CardsBloc() : super(CardsInitial());
  final _getIt = GetIt.instance.get<CardService>();
  @override
  Stream<CardsState> mapEventToState(CardsEvent event) async* {
    yield CardsInitial();
    if (event is CardsFetched) {
      try {
        final listCards = await _getIt.fetchCardByParams(event.parameter) ?? [];
        yield CardsSuccess(listCards: listCards);
        return;
      } catch (_) {
        yield CardsFailure();
      }
    }
    if (event is CardsStart) {
      yield CardsInitial();
      return;
    }
    if (event is SearchCards) {
      yield CardsLoading();

      try {
        final listCards = await _getIt.fetchCardByParams(event.parameter) ?? [];
        yield CardsSuccess(listCards: listCards);
        return;
      } catch (_) {
        yield CardsFailure();
      }
    }
  }
}
