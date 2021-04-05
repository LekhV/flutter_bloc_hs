import 'package:equatable/equatable.dart';
import 'package:flutter_example_bloc/home_screen/dto/info_hs_dto.dart';

import 'package:flutter_example_bloc/home_screen/models/info_hs_model.dart';

abstract class InfoHSState extends Equatable {
  const InfoHSState();

  @override
  List<Object> get props => [];
}

class InfoHSInitial extends InfoHSState {}

class InfoHSFailure extends InfoHSState {}

class InfoHSSuccess extends InfoHSState {
  final InfoHSDTO infoHSs;

  const InfoHSSuccess({
    this.infoHSs,
  });

  @override
  List<Object> get props => [infoHSs];

  @override
  String toString() => 'InfoHSSuccess { InfoHSs: ${infoHSs.toString()}, }';
}
