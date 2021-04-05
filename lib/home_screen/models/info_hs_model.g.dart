// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_hs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoHS _$InfoHSFromJson(Map<String, dynamic> json) {
  return InfoHS(
    patch: json['patch'] as String,
    classes: (json['classes'] as List)?.map((e) => e as String)?.toList(),
    sets: (json['sets'] as List)?.map((e) => e as String)?.toList(),
    standard: (json['standard'] as List)?.map((e) => e as String)?.toList(),
    wild: (json['wild'] as List)?.map((e) => e as String)?.toList(),
    types: (json['types'] as List)?.map((e) => e as String)?.toList(),
    factions: (json['factions'] as List)?.map((e) => e as String)?.toList(),
    qualities: (json['qualities'] as List)?.map((e) => e as String)?.toList(),
    races: (json['races'] as List)?.map((e) => e as String)?.toList(),
    locales: json['locales'] == null
        ? null
        : LocalesModel.fromJson(json['locales'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$InfoHSToJson(InfoHS instance) => <String, dynamic>{
      'patch': instance.patch,
      'classes': instance.classes,
      'sets': instance.sets,
      'standard': instance.standard,
      'wild': instance.wild,
      'types': instance.types,
      'factions': instance.factions,
      'qualities': instance.qualities,
      'races': instance.races,
      'locales': instance.locales,
    };
