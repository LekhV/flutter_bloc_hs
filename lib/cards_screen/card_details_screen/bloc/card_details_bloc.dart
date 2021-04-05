import 'package:bloc/bloc.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_example_bloc/cards_screen/api/card_by_params.dart';

import 'card_details_event.dart';
import 'card_details_state.dart';

class CardDetailsBloc extends Bloc<CardDetailsEvent, CardDetailsState> {
  CardDetailsBloc() : super(CardDetailsInitial());

  @override
  Stream<CardDetailsState> mapEventToState(CardDetailsEvent event) async* {
    yield CardDetailsInitial();

    if (event is CardDetailsFetched) {
      try {
        final cardDetails = await GetIt.instance.get<CardService>().fetchCardDetails(event.cardId);
        yield CardDetailsSuccess(cardDetails: cardDetails);
        return;
      } catch (_) {
        yield CardDetailsFailure();
      }
    }
  }
}
