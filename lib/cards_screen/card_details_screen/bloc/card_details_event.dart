import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class CardDetailsEvent extends Equatable {
  const CardDetailsEvent();
}

class CardDetailsStart extends CardDetailsEvent {
  const CardDetailsStart();

  @override
  List<Object> get props => [];
}

class CardDetailsFetched extends CardDetailsEvent {
  final String cardId;

  const CardDetailsFetched({@required this.cardId}) : assert(cardId != null);

  @override
  List<Object> get props => [cardId];
}
