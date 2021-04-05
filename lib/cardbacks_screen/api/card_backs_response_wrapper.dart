import 'package:json_annotation/json_annotation.dart';

import 'card_back_dto/card_back_dto.dart';

import 'package:flutter_example_bloc/cardbacks_screen/api/cardback.dart';

part 'card_backs_response_wrapper.g.dart';

@JsonSerializable(nullable: false)
class CardBacksResponseWrapper {
  @JsonKey(name: '')
  final List<CardBackDTO> cardBacksDTO;

  CardBacksResponseWrapper({this.cardBacksDTO});
  factory CardBacksResponseWrapper.fromJson(List<dynamic> json) =>
      _$CardBacksResponseWrapperFromJson(json);

  List<CardBack> getCardBacks() {
    return cardBacksDTO.map((cardBackDTO) => cardBackDTO.toCardBack()).toList();
  }
}
