import 'package:json_annotation/json_annotation.dart';

import 'cards_dto/card_by_params_dto.dart';
import 'package:flutter_example_bloc/cards_screen/api/card_by_params.dart';

part 'card_response_wrapper.g.dart';

@JsonSerializable(nullable: false)
class CardResponseWrapper {
  @JsonKey(name: '')
  final List<CardByParamsDTO> cardsDTO;

  CardResponseWrapper({this.cardsDTO});
  factory CardResponseWrapper.fromJson(List json) => _$CardResponseWrapperFromJson(json);

  List<CardByParams> getCards() {
    return cardsDTO.map((cardDTO) => cardDTO.toCard()).toList();
  }

  CardByParams getCard() {
    return cardsDTO.map((cardDTO) => cardDTO.toCard()).toList()[0];
  }
}
