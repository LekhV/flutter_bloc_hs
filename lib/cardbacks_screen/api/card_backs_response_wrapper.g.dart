// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_backs_response_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardBacksResponseWrapper _$CardBacksResponseWrapperFromJson(List<dynamic> json) {
  return CardBacksResponseWrapper(
    cardBacksDTO: (json).map((e) => CardBackDTO.fromJson(e as Map<String, dynamic>)).toList(),
  );
}

Map<String, dynamic> _$CardBacksResponseWrapperToJson(CardBacksResponseWrapper instance) =>
    <String, dynamic>{
      '': instance.cardBacksDTO,
    };
