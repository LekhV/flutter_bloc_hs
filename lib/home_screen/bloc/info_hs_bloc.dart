import 'package:bloc/bloc.dart';

import 'package:flutter_example_bloc/home_screen/bloc/info_event.dart';
import 'package:flutter_example_bloc/home_screen/api/info_repository.dart';
import 'package:flutter_example_bloc/home_screen/bloc/info_state.dart';
import 'package:flutter_example_bloc/home_screen/dto/info_hs_dto.dart';

class InfoHSBloc extends Bloc<InfoHSEvent, InfoHSState> {
  final InfoHSRepository infoHSRepository;
  InfoHSBloc({this.infoHSRepository})
      : assert(infoHSRepository != null),
        super(InfoHSInitial());

  @override
  Stream<InfoHSState> mapEventToState(InfoHSEvent event) async* {
    final currentState = state;
    if (event is InfoHSFetched) {
      try {
        if (currentState is InfoHSInitial) {
          final InfoHSDTO infoHSs = await infoHSRepository.fetchInfoHS();
          yield InfoHSSuccess(infoHSs: infoHSs);
          return;
        }
        if (currentState is InfoHSSuccess) {
          final InfoHSDTO infoHSs = await infoHSRepository.fetchInfoHS();
          yield InfoHSSuccess(infoHSs: infoHSs);
        }
      } catch (_) {
        yield InfoHSFailure();
      }
    }
  }
}
