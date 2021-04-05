import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_hs_event_freeze.freezed.dart';

@freezed
abstract class InfoHSEventFreeze with _$InfoHSEventFreeze {
  const factory InfoHSEventFreeze.fetchedInfo() = InfoHSFetchedFreeze;
}
