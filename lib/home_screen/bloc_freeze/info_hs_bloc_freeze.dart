import 'package:bloc/bloc.dart';

import 'package:flutter_example_bloc/home_screen/api/info_repository.dart';

import 'info_hs_event_freeze.dart';
import 'info_hs_state_freeze.dart';

class InfoHSBlocFreeze extends Bloc<InfoHSEventFreeze, InfoHSStateFreeze> {
  final InfoHSRepository infoHSRepository;
  InfoHSBlocFreeze({this.infoHSRepository})
      : assert(infoHSRepository != null),
        super(InfoHSStateFreeze.loading());

  InfoHSStateFreeze get initialState => InfoHSStateFreeze.loading();

  @override
  Stream<InfoHSStateFreeze> mapEventToState(InfoHSEventFreeze event) async* {
    if (event is InfoHSFetchedFreeze) {
      yield InfoHSStateFreeze.loading();

      try {
        final infoHSs = await infoHSRepository.fetchInfoHS();
        yield InfoHSStateFreeze.content(infoHSs);
      } catch (_) {
        yield InfoHSStateFreeze.error();
      }
    }
  }
}
