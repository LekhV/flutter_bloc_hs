import 'package:flutter_example_bloc/home_screen/dto/info_hs_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'info_hs_state_freeze.freezed.dart';

@freezed
abstract class InfoHSStateFreeze with _$InfoHSStateFreeze {
  const factory InfoHSStateFreeze.loading() = _InfoHSInitial;
  const factory InfoHSStateFreeze.content(InfoHSDTO infoHSDTO) = _InfoHSSuccess;
  const factory InfoHSStateFreeze.error() = _InfoHSFailure;
}
