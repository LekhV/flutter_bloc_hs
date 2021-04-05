import 'package:flutter_example_bloc/home_screen/models/locales_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'info_hs_dto.freezed.dart';
part 'info_hs_dto.g.dart';

@freezed
abstract class InfoHSDTO with _$InfoHSDTO {
  factory InfoHSDTO({
    String patch,
    List<String> classes,
    List<String> sets,
    List<String> standard,
    List<String> wild,
    List<String> types,
    List<String> factions,
    List<String> qualities,
    List<String> races,
    LocalesModel locales,
  }) = _InfoHSDTO;

  factory InfoHSDTO.fromJson(Map<String, dynamic> json) => _$InfoHSDTOFromJson(json);
}
