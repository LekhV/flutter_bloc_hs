// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_response_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardResponseWrapper _$CardResponseWrapperFromJson(List<dynamic> json) {
  return CardResponseWrapper(
    cardsDTO: (json).map((e) => CardByParamsDTO.fromJson(e as Map<String, dynamic>)).toList(),
  );
}

Map<String, dynamic> _$CardResponseWrapperToJson(CardResponseWrapper instance) => <String, dynamic>{
      '': instance.cardsDTO,
    };
