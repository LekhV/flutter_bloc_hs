// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'info_hs_state_freeze.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InfoHSStateFreezeTearOff {
  const _$InfoHSStateFreezeTearOff();

// ignore: unused_element
  _InfoHSInitial loading() {
    return const _InfoHSInitial();
  }

// ignore: unused_element
  _InfoHSSuccess content(InfoHSDTO infoHSDTO) {
    return _InfoHSSuccess(
      infoHSDTO,
    );
  }

// ignore: unused_element
  _InfoHSFailure error() {
    return const _InfoHSFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $InfoHSStateFreeze = _$InfoHSStateFreezeTearOff();

/// @nodoc
mixin _$InfoHSStateFreeze {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult content(InfoHSDTO infoHSDTO),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult content(InfoHSDTO infoHSDTO),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_InfoHSInitial value),
    @required TResult content(_InfoHSSuccess value),
    @required TResult error(_InfoHSFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_InfoHSInitial value),
    TResult content(_InfoHSSuccess value),
    TResult error(_InfoHSFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $InfoHSStateFreezeCopyWith<$Res> {
  factory $InfoHSStateFreezeCopyWith(
          InfoHSStateFreeze value, $Res Function(InfoHSStateFreeze) then) =
      _$InfoHSStateFreezeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InfoHSStateFreezeCopyWithImpl<$Res>
    implements $InfoHSStateFreezeCopyWith<$Res> {
  _$InfoHSStateFreezeCopyWithImpl(this._value, this._then);

  final InfoHSStateFreeze _value;
  // ignore: unused_field
  final $Res Function(InfoHSStateFreeze) _then;
}

/// @nodoc
abstract class _$InfoHSInitialCopyWith<$Res> {
  factory _$InfoHSInitialCopyWith(
          _InfoHSInitial value, $Res Function(_InfoHSInitial) then) =
      __$InfoHSInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InfoHSInitialCopyWithImpl<$Res>
    extends _$InfoHSStateFreezeCopyWithImpl<$Res>
    implements _$InfoHSInitialCopyWith<$Res> {
  __$InfoHSInitialCopyWithImpl(
      _InfoHSInitial _value, $Res Function(_InfoHSInitial) _then)
      : super(_value, (v) => _then(v as _InfoHSInitial));

  @override
  _InfoHSInitial get _value => super._value as _InfoHSInitial;
}

/// @nodoc
class _$_InfoHSInitial implements _InfoHSInitial {
  const _$_InfoHSInitial();

  @override
  String toString() {
    return 'InfoHSStateFreeze.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InfoHSInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult content(InfoHSDTO infoHSDTO),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult content(InfoHSDTO infoHSDTO),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_InfoHSInitial value),
    @required TResult content(_InfoHSSuccess value),
    @required TResult error(_InfoHSFailure value),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_InfoHSInitial value),
    TResult content(_InfoHSSuccess value),
    TResult error(_InfoHSFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _InfoHSInitial implements InfoHSStateFreeze {
  const factory _InfoHSInitial() = _$_InfoHSInitial;
}

/// @nodoc
abstract class _$InfoHSSuccessCopyWith<$Res> {
  factory _$InfoHSSuccessCopyWith(
          _InfoHSSuccess value, $Res Function(_InfoHSSuccess) then) =
      __$InfoHSSuccessCopyWithImpl<$Res>;
  $Res call({InfoHSDTO infoHSDTO});

  $InfoHSDTOCopyWith<$Res> get infoHSDTO;
}

/// @nodoc
class __$InfoHSSuccessCopyWithImpl<$Res>
    extends _$InfoHSStateFreezeCopyWithImpl<$Res>
    implements _$InfoHSSuccessCopyWith<$Res> {
  __$InfoHSSuccessCopyWithImpl(
      _InfoHSSuccess _value, $Res Function(_InfoHSSuccess) _then)
      : super(_value, (v) => _then(v as _InfoHSSuccess));

  @override
  _InfoHSSuccess get _value => super._value as _InfoHSSuccess;

  @override
  $Res call({
    Object infoHSDTO = freezed,
  }) {
    return _then(_InfoHSSuccess(
      infoHSDTO == freezed ? _value.infoHSDTO : infoHSDTO as InfoHSDTO,
    ));
  }

  @override
  $InfoHSDTOCopyWith<$Res> get infoHSDTO {
    if (_value.infoHSDTO == null) {
      return null;
    }
    return $InfoHSDTOCopyWith<$Res>(_value.infoHSDTO, (value) {
      return _then(_value.copyWith(infoHSDTO: value));
    });
  }
}

/// @nodoc
class _$_InfoHSSuccess implements _InfoHSSuccess {
  const _$_InfoHSSuccess(this.infoHSDTO) : assert(infoHSDTO != null);

  @override
  final InfoHSDTO infoHSDTO;

  @override
  String toString() {
    return 'InfoHSStateFreeze.content(infoHSDTO: $infoHSDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfoHSSuccess &&
            (identical(other.infoHSDTO, infoHSDTO) ||
                const DeepCollectionEquality()
                    .equals(other.infoHSDTO, infoHSDTO)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(infoHSDTO);

  @JsonKey(ignore: true)
  @override
  _$InfoHSSuccessCopyWith<_InfoHSSuccess> get copyWith =>
      __$InfoHSSuccessCopyWithImpl<_InfoHSSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult content(InfoHSDTO infoHSDTO),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(error != null);
    return content(infoHSDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult content(InfoHSDTO infoHSDTO),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (content != null) {
      return content(infoHSDTO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_InfoHSInitial value),
    @required TResult content(_InfoHSSuccess value),
    @required TResult error(_InfoHSFailure value),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(error != null);
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_InfoHSInitial value),
    TResult content(_InfoHSSuccess value),
    TResult error(_InfoHSFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _InfoHSSuccess implements InfoHSStateFreeze {
  const factory _InfoHSSuccess(InfoHSDTO infoHSDTO) = _$_InfoHSSuccess;

  InfoHSDTO get infoHSDTO;
  @JsonKey(ignore: true)
  _$InfoHSSuccessCopyWith<_InfoHSSuccess> get copyWith;
}

/// @nodoc
abstract class _$InfoHSFailureCopyWith<$Res> {
  factory _$InfoHSFailureCopyWith(
          _InfoHSFailure value, $Res Function(_InfoHSFailure) then) =
      __$InfoHSFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$InfoHSFailureCopyWithImpl<$Res>
    extends _$InfoHSStateFreezeCopyWithImpl<$Res>
    implements _$InfoHSFailureCopyWith<$Res> {
  __$InfoHSFailureCopyWithImpl(
      _InfoHSFailure _value, $Res Function(_InfoHSFailure) _then)
      : super(_value, (v) => _then(v as _InfoHSFailure));

  @override
  _InfoHSFailure get _value => super._value as _InfoHSFailure;
}

/// @nodoc
class _$_InfoHSFailure implements _InfoHSFailure {
  const _$_InfoHSFailure();

  @override
  String toString() {
    return 'InfoHSStateFreeze.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InfoHSFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult content(InfoHSDTO infoHSDTO),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult content(InfoHSDTO infoHSDTO),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_InfoHSInitial value),
    @required TResult content(_InfoHSSuccess value),
    @required TResult error(_InfoHSFailure value),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_InfoHSInitial value),
    TResult content(_InfoHSSuccess value),
    TResult error(_InfoHSFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _InfoHSFailure implements InfoHSStateFreeze {
  const factory _InfoHSFailure() = _$_InfoHSFailure;
}
