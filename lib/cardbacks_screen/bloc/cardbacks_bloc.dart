import 'package:bloc/bloc.dart';

import 'package:get_it/get_it.dart';

import 'package:flutter_example_bloc/cardbacks_screen/bloc/cardbacks_event.dart';
import 'package:flutter_example_bloc/cardbacks_screen/bloc/cardbacks_state.dart';
import 'package:flutter_example_bloc/cardbacks_screen/api/cardback.dart';

class CardBacksBloc extends Bloc<CardBacksEvent, CardBacksState> {
  CardBacksBloc() : super(CardBacksInitial());

  @override
  Stream<CardBacksState> mapEventToState(CardBacksEvent event) async* {
    yield CardBacksInitial();

    if (event is CardBacksFetched) {
      try {
        final listCardBacks = await GetIt.instance.get<CardBacksService>().fetchCardBacks() ?? [];
        yield CardBacksSuccess(listCardBacks: listCardBacks);
        return;
      } catch (_) {
        yield CardBacksFailure();
      }
    }
  }
}
