// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'info_hs_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InfoHSDTO _$InfoHSDTOFromJson(Map<String, dynamic> json) {
  return _InfoHSDTO.fromJson(json);
}

/// @nodoc
class _$InfoHSDTOTearOff {
  const _$InfoHSDTOTearOff();

// ignore: unused_element
  _InfoHSDTO call(
      {String patch,
      List<String> classes,
      List<String> sets,
      List<String> standard,
      List<String> wild,
      List<String> types,
      List<String> factions,
      List<String> qualities,
      List<String> races,
      LocalesModel locales}) {
    return _InfoHSDTO(
      patch: patch,
      classes: classes,
      sets: sets,
      standard: standard,
      wild: wild,
      types: types,
      factions: factions,
      qualities: qualities,
      races: races,
      locales: locales,
    );
  }

// ignore: unused_element
  InfoHSDTO fromJson(Map<String, Object> json) {
    return InfoHSDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $InfoHSDTO = _$InfoHSDTOTearOff();

/// @nodoc
mixin _$InfoHSDTO {
  String get patch;
  List<String> get classes;
  List<String> get sets;
  List<String> get standard;
  List<String> get wild;
  List<String> get types;
  List<String> get factions;
  List<String> get qualities;
  List<String> get races;
  LocalesModel get locales;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $InfoHSDTOCopyWith<InfoHSDTO> get copyWith;
}

/// @nodoc
abstract class $InfoHSDTOCopyWith<$Res> {
  factory $InfoHSDTOCopyWith(InfoHSDTO value, $Res Function(InfoHSDTO) then) =
      _$InfoHSDTOCopyWithImpl<$Res>;
  $Res call(
      {String patch,
      List<String> classes,
      List<String> sets,
      List<String> standard,
      List<String> wild,
      List<String> types,
      List<String> factions,
      List<String> qualities,
      List<String> races,
      LocalesModel locales});
}

/// @nodoc
class _$InfoHSDTOCopyWithImpl<$Res> implements $InfoHSDTOCopyWith<$Res> {
  _$InfoHSDTOCopyWithImpl(this._value, this._then);

  final InfoHSDTO _value;
  // ignore: unused_field
  final $Res Function(InfoHSDTO) _then;

  @override
  $Res call({
    Object patch = freezed,
    Object classes = freezed,
    Object sets = freezed,
    Object standard = freezed,
    Object wild = freezed,
    Object types = freezed,
    Object factions = freezed,
    Object qualities = freezed,
    Object races = freezed,
    Object locales = freezed,
  }) {
    return _then(_value.copyWith(
      patch: patch == freezed ? _value.patch : patch as String,
      classes: classes == freezed ? _value.classes : classes as List<String>,
      sets: sets == freezed ? _value.sets : sets as List<String>,
      standard: standard == freezed ? _value.standard : standard as List<String>,
      wild: wild == freezed ? _value.wild : wild as List<String>,
      types: types == freezed ? _value.types : types as List<String>,
      factions: factions == freezed ? _value.factions : factions as List<String>,
      qualities: qualities == freezed ? _value.qualities : qualities as List<String>,
      races: races == freezed ? _value.races : races as List<String>,
      locales: locales == freezed ? _value.locales : locales as LocalesModel,
    ));
  }
}

/// @nodoc
abstract class _$InfoHSDTOCopyWith<$Res> implements $InfoHSDTOCopyWith<$Res> {
  factory _$InfoHSDTOCopyWith(_InfoHSDTO value, $Res Function(_InfoHSDTO) then) =
      __$InfoHSDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String patch,
      List<String> classes,
      List<String> sets,
      List<String> standard,
      List<String> wild,
      List<String> types,
      List<String> factions,
      List<String> qualities,
      List<String> races,
      LocalesModel locales});
}

/// @nodoc
class __$InfoHSDTOCopyWithImpl<$Res> extends _$InfoHSDTOCopyWithImpl<$Res>
    implements _$InfoHSDTOCopyWith<$Res> {
  __$InfoHSDTOCopyWithImpl(_InfoHSDTO _value, $Res Function(_InfoHSDTO) _then)
      : super(_value, (v) => _then(v as _InfoHSDTO));

  @override
  _InfoHSDTO get _value => super._value as _InfoHSDTO;

  @override
  $Res call({
    Object patch = freezed,
    Object classes = freezed,
    Object sets = freezed,
    Object standard = freezed,
    Object wild = freezed,
    Object types = freezed,
    Object factions = freezed,
    Object qualities = freezed,
    Object races = freezed,
    Object locales = freezed,
  }) {
    return _then(_InfoHSDTO(
      patch: patch == freezed ? _value.patch : patch as String,
      classes: classes == freezed ? _value.classes : classes as List<String>,
      sets: sets == freezed ? _value.sets : sets as List<String>,
      standard: standard == freezed ? _value.standard : standard as List<String>,
      wild: wild == freezed ? _value.wild : wild as List<String>,
      types: types == freezed ? _value.types : types as List<String>,
      factions: factions == freezed ? _value.factions : factions as List<String>,
      qualities: qualities == freezed ? _value.qualities : qualities as List<String>,
      races: races == freezed ? _value.races : races as List<String>,
      locales: locales == freezed ? _value.locales : locales as LocalesModel,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_InfoHSDTO implements _InfoHSDTO {
  _$_InfoHSDTO(
      {this.patch,
      this.classes,
      this.sets,
      this.standard,
      this.wild,
      this.types,
      this.factions,
      this.qualities,
      this.races,
      this.locales});

  factory _$_InfoHSDTO.fromJson(Map<String, dynamic> json) => _$_$_InfoHSDTOFromJson(json);

  @override
  final String patch;
  @override
  final List<String> classes;
  @override
  final List<String> sets;
  @override
  final List<String> standard;
  @override
  final List<String> wild;
  @override
  final List<String> types;
  @override
  final List<String> factions;
  @override
  final List<String> qualities;
  @override
  final List<String> races;
  @override
  final LocalesModel locales;

  @override
  String toString() {
    return 'InfoHSDTO(patch: $patch, classes: $classes, sets: $sets, standard: $standard, wild: $wild, types: $types, factions: $factions, qualities: $qualities, races: $races, locales: $locales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfoHSDTO &&
            (identical(other.patch, patch) ||
                const DeepCollectionEquality().equals(other.patch, patch)) &&
            (identical(other.classes, classes) ||
                const DeepCollectionEquality().equals(other.classes, classes)) &&
            (identical(other.sets, sets) ||
                const DeepCollectionEquality().equals(other.sets, sets)) &&
            (identical(other.standard, standard) ||
                const DeepCollectionEquality().equals(other.standard, standard)) &&
            (identical(other.wild, wild) ||
                const DeepCollectionEquality().equals(other.wild, wild)) &&
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)) &&
            (identical(other.factions, factions) ||
                const DeepCollectionEquality().equals(other.factions, factions)) &&
            (identical(other.qualities, qualities) ||
                const DeepCollectionEquality().equals(other.qualities, qualities)) &&
            (identical(other.races, races) ||
                const DeepCollectionEquality().equals(other.races, races)) &&
            (identical(other.locales, locales) ||
                const DeepCollectionEquality().equals(other.locales, locales)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(patch) ^
      const DeepCollectionEquality().hash(classes) ^
      const DeepCollectionEquality().hash(sets) ^
      const DeepCollectionEquality().hash(standard) ^
      const DeepCollectionEquality().hash(wild) ^
      const DeepCollectionEquality().hash(types) ^
      const DeepCollectionEquality().hash(factions) ^
      const DeepCollectionEquality().hash(qualities) ^
      const DeepCollectionEquality().hash(races) ^
      const DeepCollectionEquality().hash(locales);

  @JsonKey(ignore: true)
  @override
  _$InfoHSDTOCopyWith<_InfoHSDTO> get copyWith =>
      __$InfoHSDTOCopyWithImpl<_InfoHSDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InfoHSDTOToJson(this);
  }
}

abstract class _InfoHSDTO implements InfoHSDTO {
  factory _InfoHSDTO(
      {String patch,
      List<String> classes,
      List<String> sets,
      List<String> standard,
      List<String> wild,
      List<String> types,
      List<String> factions,
      List<String> qualities,
      List<String> races,
      LocalesModel locales}) = _$_InfoHSDTO;

  factory _InfoHSDTO.fromJson(Map<String, dynamic> json) = _$_InfoHSDTO.fromJson;

  @override
  String get patch;
  @override
  List<String> get classes;
  @override
  List<String> get sets;
  @override
  List<String> get standard;
  @override
  List<String> get wild;
  @override
  List<String> get types;
  @override
  List<String> get factions;
  @override
  List<String> get qualities;
  @override
  List<String> get races;
  @override
  LocalesModel get locales;
  @override
  @JsonKey(ignore: true)
  _$InfoHSDTOCopyWith<_InfoHSDTO> get copyWith;
}
