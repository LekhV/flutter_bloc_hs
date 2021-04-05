import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class CardsEvent extends Equatable {
  const CardsEvent();
}

class CardsFetched extends CardsEvent {
  final String parameter;

  const CardsFetched({@required this.parameter}) : assert(parameter != null);

  @override
  List<Object> get props => [parameter];
}

class CardsStart extends CardsEvent {
  const CardsStart();

  @override
  List<Object> get props => [];
}

class SearchCards extends CardsEvent {
  final String parameter;

  const SearchCards({@required this.parameter}) : assert(parameter != null);

  @override
  List<Object> get props => [parameter];
}
